\set ON_ERROR_STOP on

BEGIN;
SET TRANSACTION READ ONLY;

SELECT
  count(*) = 1
  AS exact_nation_ok
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
\gset

\if :exact_nation_ok
\else
  \echo 'STOP=EXACT_NATION_VERIFY_FAILED'
  \quit 3
\endif

SELECT
  count(*) = 1
  AS exact_territory_ok
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
\gset

\if :exact_territory_ok
\else
  \echo 'STOP=EXACT_TERRITORY_VERIFY_FAILED'
  \quit 3
\endif

SELECT
  count(*) = 1
  AS territory_nation_binding_ok
FROM civilization.territory_record t
JOIN civilization.nation_registry n
  ON n.nation_id = t.nation_id
WHERE
  t.territory_record_id =
    :'territory_record_id'::uuid
  AND n.nation_id = :'nation_id'::uuid
  AND n.nation_status = 'active'
  AND n.effective_until IS NULL
\gset

\if :territory_nation_binding_ok
\else
  \echo 'STOP=TERRITORY_NATION_BINDING_VERIFY_FAILED'
  \quit 3
\endif

SELECT
  count(*) = 0
  AS public_target_ok
FROM pg_catalog.pg_class c
JOIN pg_catalog.pg_namespace ns
  ON ns.oid = c.relnamespace
WHERE ns.nspname = 'public'
  AND c.relname IN (
    'nation_registry',
    'territory_record'
  )
\gset

\if :public_target_ok
\else
  \echo 'STOP=PUBLIC_TARGET_VERIFY_FAILED'
  \quit 3
\endif

ROLLBACK;

SELECT
  'PASS_CIVILIZATIONOS_R13_NATION_TERRITORY_PROVISIONING_VERIFY'
  AS result;
