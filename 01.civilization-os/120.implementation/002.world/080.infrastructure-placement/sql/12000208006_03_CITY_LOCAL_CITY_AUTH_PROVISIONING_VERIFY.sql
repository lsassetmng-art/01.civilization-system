\set ON_ERROR_STOP on

BEGIN;
SET TRANSACTION READ ONLY;

SELECT
  EXISTS (
    SELECT 1
    FROM civilization.territory_record t
    WHERE
      t.nation_id = :'nation_id'::uuid
      AND t.territory_code = :'territory_code'
      AND t.territory_status = 'active'
      AND t.effective_until IS NULL
  )
  AS territory_ok
\gset

\if :territory_ok
\else
  \echo 'STOP=TERRITORY_VERIFY_FAILED'
  \quit 3
\endif

SELECT
  count(*) = 1
  AS city_natural_key_ok
FROM civilization.city_registry c
WHERE
  c.nation_id = :'nation_id'::uuid
  AND c.city_code = :'city_code'
\gset

\if :city_natural_key_ok
\else
  \echo 'STOP=CITY_NATURAL_KEY_VERIFY_FAILED'
  \quit 3
\endif

SELECT
  count(*) = 1
  AS exact_city_ok
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
\gset

\if :exact_city_ok
\else
  \echo 'STOP=EXACT_CITY_VERIFY_FAILED'
  \quit 3
\endif

SELECT
  count(*) = 1
  AS exact_authorization_ok
FROM civilization.nation_read_authorization a
WHERE
  a.nation_read_authorization_id = :'authorization_id'::uuid
  AND a.server_session_actor_key = :'server_session_actor_key'
  AND a.nation_id = :'nation_id'::uuid
  AND a.scope_code = 'city_local_read'
  AND a.authorization_status = 'active'
  AND a.effective_from = :'authorization_effective_from'::timestamptz
  AND a.effective_until IS NULL
\gset

\if :exact_authorization_ok
\else
  \echo 'STOP=EXACT_AUTHORIZATION_VERIFY_FAILED'
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
  \echo 'STOP=PUBLIC_TARGET_VERIFY_FAILED'
  \quit 3
\endif

ROLLBACK;

SELECT
  'PASS_CIVILIZATIONOS_R13_CITY_AUTH_PROVISIONING_VERIFY'
  AS result;
