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
SET TRANSACTION READ ONLY;

SELECT
  current_setting('transaction_read_only') = 'on'
  AS read_only_ok
\gset

\if :read_only_ok
\else
  \echo 'STOP=TRANSACTION_NOT_READ_ONLY'
  \quit 3
\endif

SELECT
  count(*) = 3
  AS required_tables_ok
FROM pg_catalog.pg_class c
JOIN pg_catalog.pg_namespace n
  ON n.oid = c.relnamespace
WHERE n.nspname = 'civilization'
  AND c.relkind IN ('r', 'p')
  AND c.relname IN (
    'territory_record',
    'city_registry',
    'nation_read_authorization'
  )
\gset

\if :required_tables_ok
\else
  \echo 'STOP=REQUIRED_TABLES_MISSING'
  \quit 3
\endif

SELECT
  count(*) = 0
  AS public_target_ok
FROM pg_catalog.pg_class c
JOIN pg_catalog.pg_namespace n
  ON n.oid = c.relnamespace
WHERE n.nspname = 'public'
  AND c.relname IN (
    'territory_record',
    'city_registry',
    'nation_read_authorization'
  )
\gset

\if :public_target_ok
\else
  \echo 'STOP=PUBLIC_TARGET_COLLISION'
  \quit 3
\endif

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
  AS city_natural_key_compatible
\gset

\if :city_natural_key_compatible
\else
  \echo 'STOP=CITY_NATURAL_KEY_CONFLICT'
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
        AND c.city_name = :'city_name'
        AND c.city_status = 'active'
        AND c.territory_code = :'territory_code'
        AND c.source_state_version = :'source_state_version'::bigint
        AND c.effective_from = :'city_effective_from'::timestamptz
        AND c.effective_until IS NULL
    )
  )
  AS city_id_compatible
\gset

\if :city_id_compatible
\else
  \echo 'STOP=CITY_REGISTRY_ID_CONFLICT'
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
  AS authorization_natural_key_compatible
\gset

\if :authorization_natural_key_compatible
\else
  \echo 'STOP=AUTHORIZATION_NATURAL_KEY_CONFLICT'
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
        AND a.authorization_status = 'active'
        AND a.effective_from = :'authorization_effective_from'::timestamptz
        AND a.effective_until IS NULL
    )
  )
  AS authorization_id_compatible
\gset

\if :authorization_id_compatible
\else
  \echo 'STOP=AUTHORIZATION_ID_CONFLICT'
  \quit 3
\endif

ROLLBACK;

SELECT
  'PASS_CIVILIZATIONOS_R13_CITY_AUTH_PROVISIONING_PREFLIGHT'
  AS result;
