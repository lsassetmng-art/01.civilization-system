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
  count(*) = 2
  AS required_tables_ok
FROM pg_catalog.pg_class c
JOIN pg_catalog.pg_namespace n
  ON n.oid = c.relnamespace
WHERE n.nspname = 'civilization'
  AND c.relkind IN ('r', 'p')
  AND c.relname IN (
    'nation_registry',
    'territory_record'
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
    'nation_registry',
    'territory_record'
  )
\gset

\if :public_target_ok
\else
  \echo 'STOP=PUBLIC_TARGET_COLLISION'
  \quit 3
\endif

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
      WHERE n.nation_code = :'nation_code'
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
  AS nation_code_compatible
\gset

\if :nation_code_compatible
\else
  \echo 'STOP=NATION_CODE_CONFLICT'
  \quit 3
\endif

SELECT
  (
    NOT EXISTS (
      SELECT 1
      FROM civilization.nation_registry n
      WHERE n.nation_id = :'nation_id'::uuid
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
  AS nation_id_compatible
\gset

\if :nation_id_compatible
\else
  \echo 'STOP=NATION_ID_CONFLICT'
  \quit 3
\endif

SELECT
  (
    NOT EXISTS (
      SELECT 1
      FROM civilization.territory_record t
      WHERE
        t.nation_id = :'nation_id'::uuid
        AND t.territory_code = :'territory_code'
    )
    OR EXISTS (
      SELECT 1
      FROM civilization.territory_record t
      WHERE
        t.territory_record_id = :'territory_record_id'::uuid
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
  AS territory_natural_key_compatible
\gset

\if :territory_natural_key_compatible
\else
  \echo 'STOP=TERRITORY_NATURAL_KEY_CONFLICT'
  \quit 3
\endif

SELECT
  (
    NOT EXISTS (
      SELECT 1
      FROM civilization.territory_record t
      WHERE
        t.territory_record_id =
          :'territory_record_id'::uuid
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
  AS territory_id_compatible
\gset

\if :territory_id_compatible
\else
  \echo 'STOP=TERRITORY_RECORD_ID_CONFLICT'
  \quit 3
\endif

ROLLBACK;

SELECT
  'PASS_CIVILIZATIONOS_R13_NATION_TERRITORY_PROVISIONING_PREFLIGHT'
  AS result;
