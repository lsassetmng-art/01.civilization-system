\set ON_ERROR_STOP on

\if :{?nation_id}
\else
  \echo 'STOP=MISSING_nation_id'
  \quit 3
\endif

\if :{?nation_code}
\else
  \echo 'STOP=MISSING_nation_code'
  \quit 3
\endif

\if :{?nation_name}
\else
  \echo 'STOP=MISSING_nation_name'
  \quit 3
\endif

\if :{?nation_source_state_version}
\else
  \echo 'STOP=MISSING_nation_source_state_version'
  \quit 3
\endif

\if :{?nation_effective_from}
\else
  \echo 'STOP=MISSING_nation_effective_from'
  \quit 3
\endif

\if :{?territory_record_id}
\else
  \echo 'STOP=MISSING_territory_record_id'
  \quit 3
\endif

\if :{?territory_code}
\else
  \echo 'STOP=MISSING_territory_code'
  \quit 3
\endif

\if :{?territory_name}
\else
  \echo 'STOP=MISSING_territory_name'
  \quit 3
\endif

\if :{?territory_class}
\else
  \echo 'STOP=MISSING_territory_class'
  \quit 3
\endif

\if :{?controlling_authority_scope}
\else
  \echo 'STOP=MISSING_controlling_authority_scope'
  \quit 3
\endif

\if :{?territory_effective_from}
\else
  \echo 'STOP=MISSING_territory_effective_from'
  \quit 3
\endif

BEGIN;
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;

LOCK TABLE civilization.nation_registry
  IN SHARE ROW EXCLUSIVE MODE;

LOCK TABLE civilization.territory_record
  IN SHARE ROW EXCLUSIVE MODE;

SELECT
  btrim(:'nation_code') <> ''
  AND btrim(:'nation_name') <> ''
  AND btrim(:'territory_code') <> ''
  AND btrim(:'territory_name') <> ''
  AND btrim(:'territory_class') <> ''
  AND btrim(:'controlling_authority_scope') <> ''
  AND :'nation_source_state_version'::bigint > 0
  AND :'nation_effective_from'::timestamptz <= now()
  AND :'territory_effective_from'::timestamptz <= now()
  AS manifest_shape_ok
\gset

\if :manifest_shape_ok
\else
  \echo 'STOP=INVALID_BOOTSTRAP_MANIFEST'
  \quit 3
\endif

SELECT
  (
    NOT EXISTS (
      SELECT 1
      FROM civilization.nation_registry n
      WHERE
        n.nation_code = :'nation_code'
        OR n.nation_id = :'nation_id'::uuid
    )
    OR EXISTS (
      SELECT 1
      FROM civilization.nation_registry n
      WHERE
        n.nation_id = :'nation_id'::uuid
        AND n.nation_code = :'nation_code'
        AND n.nation_name = :'nation_name'
        AND n.nation_status = 'active'
        AND n.source_state_version =
          :'nation_source_state_version'::bigint
        AND n.effective_from =
          :'nation_effective_from'::timestamptz
        AND n.effective_until IS NULL
    )
  )
  AS exact_nation_or_absent
\gset

\if :exact_nation_or_absent
\else
  \echo 'STOP=NATION_CONFLICT'
  \quit 3
\endif

INSERT INTO civilization.nation_registry (
  nation_id,
  nation_code,
  nation_name,
  nation_status,
  source_state_version,
  effective_from,
  effective_until,
  created_at,
  updated_at
)
SELECT
  :'nation_id'::uuid,
  :'nation_code',
  :'nation_name',
  'active',
  :'nation_source_state_version'::bigint,
  :'nation_effective_from'::timestamptz,
  NULL,
  now(),
  now()
WHERE NOT EXISTS (
  SELECT 1
  FROM civilization.nation_registry n
  WHERE
    n.nation_id = :'nation_id'::uuid
    OR n.nation_code = :'nation_code'
);

SELECT
  EXISTS (
    SELECT 1
    FROM civilization.nation_registry n
    WHERE
      n.nation_id = :'nation_id'::uuid
      AND n.nation_code = :'nation_code'
      AND n.nation_name = :'nation_name'
      AND n.nation_status = 'active'
      AND n.source_state_version =
        :'nation_source_state_version'::bigint
      AND n.effective_from =
        :'nation_effective_from'::timestamptz
      AND n.effective_until IS NULL
  )
  AS exact_nation_ok
\gset

\if :exact_nation_ok
\else
  \echo 'STOP=EXACT_NATION_VERIFY_FAILED'
  \quit 3
\endif

SELECT
  (
    NOT EXISTS (
      SELECT 1
      FROM civilization.territory_record t
      WHERE
        (
          t.nation_id = :'nation_id'::uuid
          AND t.territory_code = :'territory_code'
        )
        OR
        t.territory_record_id = :'territory_record_id'::uuid
    )
    OR EXISTS (
      SELECT 1
      FROM civilization.territory_record t
      WHERE
        t.territory_record_id =
          :'territory_record_id'::uuid
        AND t.nation_id = :'nation_id'::uuid
        AND t.territory_code = :'territory_code'
        AND t.territory_name = :'territory_name'
        AND t.territory_status = 'active'
        AND t.territory_class = :'territory_class'
        AND t.controlling_authority_scope =
          :'controlling_authority_scope'
        AND t.effective_from =
          :'territory_effective_from'::timestamptz
        AND t.effective_until IS NULL
    )
  )
  AS exact_territory_or_absent
\gset

\if :exact_territory_or_absent
\else
  \echo 'STOP=TERRITORY_CONFLICT'
  \quit 3
\endif

INSERT INTO civilization.territory_record (
  territory_record_id,
  nation_id,
  territory_code,
  territory_name,
  territory_status,
  territory_class,
  controlling_authority_scope,
  effective_from,
  effective_until,
  created_at,
  updated_at
)
SELECT
  :'territory_record_id'::uuid,
  :'nation_id'::uuid,
  :'territory_code',
  :'territory_name',
  'active',
  :'territory_class',
  :'controlling_authority_scope',
  :'territory_effective_from'::timestamptz,
  NULL,
  now(),
  now()
WHERE NOT EXISTS (
  SELECT 1
  FROM civilization.territory_record t
  WHERE
    (
      t.nation_id = :'nation_id'::uuid
      AND t.territory_code = :'territory_code'
    )
    OR
    t.territory_record_id = :'territory_record_id'::uuid
);

SELECT
  EXISTS (
    SELECT 1
    FROM civilization.territory_record t
    WHERE
      t.territory_record_id =
        :'territory_record_id'::uuid
      AND t.nation_id = :'nation_id'::uuid
      AND t.territory_code = :'territory_code'
      AND t.territory_name = :'territory_name'
      AND t.territory_status = 'active'
      AND t.territory_class = :'territory_class'
      AND t.controlling_authority_scope =
        :'controlling_authority_scope'
      AND t.effective_from =
        :'territory_effective_from'::timestamptz
      AND t.effective_until IS NULL
  )
  AS exact_territory_ok
\gset

\if :exact_territory_ok
\else
  \echo 'STOP=EXACT_TERRITORY_VERIFY_FAILED'
  \quit 3
\endif

COMMIT;

SELECT
  'PASS_CIVILIZATIONOS_R13_NATION_TERRITORY_PROVISIONING_APPLY'
  AS result;
