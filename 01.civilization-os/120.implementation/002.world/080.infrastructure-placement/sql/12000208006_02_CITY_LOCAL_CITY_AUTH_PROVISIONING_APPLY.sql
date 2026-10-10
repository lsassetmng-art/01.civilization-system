\set ON_ERROR_STOP on

\if :{?city_registry_id}
\else
  \echo 'STOP=MISSING_city_registry_id'
  \quit 3
\endif

\if :{?nation_id}
\else
  \echo 'STOP=MISSING_nation_id'
  \quit 3
\endif

\if :{?city_code}
\else
  \echo 'STOP=MISSING_city_code'
  \quit 3
\endif

\if :{?city_name}
\else
  \echo 'STOP=MISSING_city_name'
  \quit 3
\endif

\if :{?territory_code}
\else
  \echo 'STOP=MISSING_territory_code'
  \quit 3
\endif

\if :{?source_state_version}
\else
  \echo 'STOP=MISSING_source_state_version'
  \quit 3
\endif

\if :{?city_effective_from}
\else
  \echo 'STOP=MISSING_city_effective_from'
  \quit 3
\endif

\if :{?authorization_id}
\else
  \echo 'STOP=MISSING_authorization_id'
  \quit 3
\endif

\if :{?server_session_actor_key}
\else
  \echo 'STOP=MISSING_server_session_actor_key'
  \quit 3
\endif

\if :{?authorization_effective_from}
\else
  \echo 'STOP=MISSING_authorization_effective_from'
  \quit 3
\endif

BEGIN;
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;

LOCK TABLE civilization.territory_record
  IN SHARE MODE;

LOCK TABLE civilization.city_registry
  IN SHARE ROW EXCLUSIVE MODE;

LOCK TABLE civilization.nation_read_authorization
  IN SHARE ROW EXCLUSIVE MODE;

SELECT
  trim(:'city_code') <> ''
  AND trim(:'city_name') <> ''
  AND trim(:'territory_code') <> ''
  AND trim(:'server_session_actor_key') <> ''
  AND :'source_state_version'::bigint > 0
  AND :'city_effective_from'::timestamptz <= now()
  AND :'authorization_effective_from'::timestamptz <= now()
  AS manifest_shape_ok
\gset

\if :manifest_shape_ok
\else
  \echo 'STOP=INVALID_PROVISIONING_MANIFEST'
  \quit 3
\endif

SELECT
  EXISTS (
    SELECT 1
    FROM civilization.territory_record t
    WHERE
      t.nation_id = :'nation_id'::uuid
      AND t.territory_code = :'territory_code'
      AND t.territory_status = 'active'
      AND t.effective_from <= :'city_effective_from'::timestamptz
      AND t.effective_until IS NULL
  )
  AS territory_ok
\gset

\if :territory_ok
\else
  \echo 'STOP=CURRENT_ACTIVE_TERRITORY_REQUIRED'
  \quit 3
\endif

SELECT
  (
    NOT EXISTS (
      SELECT 1
      FROM civilization.city_registry c
      WHERE
        c.nation_id = :'nation_id'::uuid
        AND c.city_code = :'city_code'
    )
    OR EXISTS (
      SELECT 1
      FROM civilization.city_registry c
      WHERE
        c.city_registry_id = :'city_registry_id'::uuid
        AND c.nation_id = :'nation_id'::uuid
        AND c.city_code = :'city_code'
        AND c.city_name = :'city_name'
        AND c.city_status = 'active'
        AND c.territory_code = :'territory_code'
        AND c.source_state_version = :'source_state_version'::bigint
        AND c.effective_from = :'city_effective_from'::timestamptz
        AND c.effective_until IS NULL
    )
  )
  AS city_compatible
\gset

\if :city_compatible
\else
  \echo 'STOP=CITY_CONFLICT'
  \quit 3
\endif

SELECT
  (
    NOT EXISTS (
      SELECT 1
      FROM civilization.city_registry c
      WHERE
        c.city_registry_id = :'city_registry_id'::uuid
    )
    OR EXISTS (
      SELECT 1
      FROM civilization.city_registry c
      WHERE
        c.city_registry_id = :'city_registry_id'::uuid
        AND c.nation_id = :'nation_id'::uuid
        AND c.city_code = :'city_code'
    )
  )
  AS city_id_compatible
\gset

\if :city_id_compatible
\else
  \echo 'STOP=CITY_ID_CONFLICT'
  \quit 3
\endif

INSERT INTO civilization.city_registry (
  city_registry_id,
  nation_id,
  city_code,
  city_name,
  city_status,
  territory_code,
  source_state_version,
  effective_from,
  effective_until,
  created_at,
  updated_at
)
SELECT
  :'city_registry_id'::uuid,
  :'nation_id'::uuid,
  :'city_code',
  :'city_name',
  'active',
  :'territory_code',
  :'source_state_version'::bigint,
  :'city_effective_from'::timestamptz,
  NULL,
  now(),
  now()
WHERE NOT EXISTS (
  SELECT 1
  FROM civilization.city_registry c
  WHERE
    c.nation_id = :'nation_id'::uuid
    AND c.city_code = :'city_code'
);

SELECT
  EXISTS (
    SELECT 1
    FROM civilization.city_registry c
    WHERE
      c.city_registry_id = :'city_registry_id'::uuid
      AND c.nation_id = :'nation_id'::uuid
      AND c.city_code = :'city_code'
      AND c.city_name = :'city_name'
      AND c.city_status = 'active'
      AND c.territory_code = :'territory_code'
      AND c.source_state_version = :'source_state_version'::bigint
      AND c.effective_from = :'city_effective_from'::timestamptz
      AND c.effective_until IS NULL
  )
  AS exact_city_ok
\gset

\if :exact_city_ok
\else
  \echo 'STOP=EXACT_CITY_VERIFY_FAILED'
  \quit 3
\endif

SELECT
  (
    NOT EXISTS (
      SELECT 1
      FROM civilization.nation_read_authorization a
      WHERE
        a.server_session_actor_key = :'server_session_actor_key'
        AND a.nation_id = :'nation_id'::uuid
        AND a.scope_code = 'city_local_read'
        AND a.authorization_status = 'active'
        AND a.effective_until IS NULL
    )
    OR EXISTS (
      SELECT 1
      FROM civilization.nation_read_authorization a
      WHERE
        a.nation_read_authorization_id = :'authorization_id'::uuid
        AND a.server_session_actor_key = :'server_session_actor_key'
        AND a.nation_id = :'nation_id'::uuid
        AND a.scope_code = 'city_local_read'
        AND a.authorization_status = 'active'
        AND a.effective_from = :'authorization_effective_from'::timestamptz
        AND a.effective_until IS NULL
    )
  )
  AS authorization_compatible
\gset

\if :authorization_compatible
\else
  \echo 'STOP=AUTHORIZATION_CONFLICT'
  \quit 3
\endif

SELECT
  (
    NOT EXISTS (
      SELECT 1
      FROM civilization.nation_read_authorization a
      WHERE
        a.nation_read_authorization_id = :'authorization_id'::uuid
    )
    OR EXISTS (
      SELECT 1
      FROM civilization.nation_read_authorization a
      WHERE
        a.nation_read_authorization_id = :'authorization_id'::uuid
        AND a.server_session_actor_key = :'server_session_actor_key'
        AND a.nation_id = :'nation_id'::uuid
        AND a.scope_code = 'city_local_read'
    )
  )
  AS authorization_id_compatible
\gset

\if :authorization_id_compatible
\else
  \echo 'STOP=AUTHORIZATION_ID_CONFLICT'
  \quit 3
\endif

INSERT INTO civilization.nation_read_authorization (
  nation_read_authorization_id,
  server_session_actor_key,
  nation_id,
  scope_code,
  authorization_status,
  effective_from,
  effective_until,
  created_at,
  updated_at
)
SELECT
  :'authorization_id'::uuid,
  :'server_session_actor_key',
  :'nation_id'::uuid,
  'city_local_read',
  'active',
  :'authorization_effective_from'::timestamptz,
  NULL,
  now(),
  now()
WHERE NOT EXISTS (
  SELECT 1
  FROM civilization.nation_read_authorization a
  WHERE
    a.server_session_actor_key = :'server_session_actor_key'
    AND a.nation_id = :'nation_id'::uuid
    AND a.scope_code = 'city_local_read'
    AND a.authorization_status = 'active'
    AND a.effective_until IS NULL
);

SELECT
  EXISTS (
    SELECT 1
    FROM civilization.nation_read_authorization a
    WHERE
      a.nation_read_authorization_id = :'authorization_id'::uuid
      AND a.server_session_actor_key = :'server_session_actor_key'
      AND a.nation_id = :'nation_id'::uuid
      AND a.scope_code = 'city_local_read'
      AND a.authorization_status = 'active'
      AND a.effective_from = :'authorization_effective_from'::timestamptz
      AND a.effective_until IS NULL
  )
  AS exact_authorization_ok
\gset

\if :exact_authorization_ok
\else
  \echo 'STOP=EXACT_AUTHORIZATION_VERIFY_FAILED'
  \quit 3
\endif

COMMIT;

SELECT
  'PASS_CIVILIZATIONOS_R13_CITY_AUTH_PROVISIONING_APPLY'
  AS result;
