\set ON_ERROR_STOP on

-- Supplemental R13 city lineage / read authorization verification.

DO $verify$
DECLARE
    missing_count bigint;
BEGIN
    SELECT count(*)
      INTO missing_count
      FROM (
          VALUES
              ('city_registry'),
              ('nation_read_authorization')
      ) AS expected(table_name)
      WHERE to_regclass(
          'civilization.' || expected.table_name
      ) IS NULL;

    IF missing_count <> 0 THEN
        RAISE EXCEPTION
            'R13 supplemental verify failed: % required table(s) missing',
            missing_count;
    END IF;
END
$verify$;

DO $verify$
DECLARE
    public_duplicate_count bigint;
BEGIN
    SELECT count(*)
      INTO public_duplicate_count
      FROM pg_catalog.pg_class c
      JOIN pg_catalog.pg_namespace n
        ON n.oid = c.relnamespace
     WHERE n.nspname = 'public'
       AND c.relname IN (
           'city_registry',
           'nation_read_authorization'
       )
       AND c.relkind IN ('r', 'p');

    IF public_duplicate_count <> 0 THEN
        RAISE EXCEPTION
            'R13 supplemental verify failed: public schema contains % conflicting table(s)',
            public_duplicate_count;
    END IF;
END
$verify$;

DO $verify$
DECLARE
    constraint_count bigint;
BEGIN
    SELECT count(*)
      INTO constraint_count
      FROM pg_catalog.pg_constraint c
      JOIN pg_catalog.pg_namespace n
        ON n.oid = c.connamespace
     WHERE n.nspname = 'civilization'
       AND c.conname IN (
           'pk_city_registry',
           'uq_city_registry_nation_city',
           'uq_city_registry_binding',
           'fk_city_registry_territory',
           'ck_city_registry_status',
           'ck_city_registry_source_state_version',
           'ck_city_registry_effective_period',
           'pk_nation_read_authorization',
           'ck_nation_read_authorization_actor_key',
           'ck_nation_read_authorization_scope',
           'ck_nation_read_authorization_status',
           'ck_nation_read_authorization_effective_period',
           'fk_district_registry_city',
           'fk_active_facility_placement_city'
       );

    IF constraint_count <> 14 THEN
        RAISE EXCEPTION
            'R13 supplemental verify failed: expected 14 named constraints, found %',
            constraint_count;
    END IF;
END
$verify$;

DO $verify$
BEGIN
    IF to_regclass(
        'civilization.uq_nation_read_authorization_current_active'
    ) IS NULL THEN
        RAISE EXCEPTION
            'R13 supplemental verify failed: current authorization unique index missing';
    END IF;
END
$verify$;

DO $verify$
DECLARE
    invalid_count bigint;
BEGIN
    SELECT count(*)
      INTO invalid_count
      FROM civilization.district_registry d
      LEFT JOIN civilization.city_registry c
        ON c.nation_id = d.nation_id
       AND c.city_code = d.city_code
       AND c.territory_code = d.territory_code
     WHERE c.city_registry_id IS NULL;

    IF invalid_count <> 0 THEN
        RAISE EXCEPTION
            'R13 supplemental verify failed: % district row(s) lack canonical city binding',
            invalid_count;
    END IF;

    SELECT count(*)
      INTO invalid_count
      FROM civilization.active_facility_placement p
      LEFT JOIN civilization.city_registry c
        ON c.nation_id = p.nation_id
       AND c.city_code = p.city_code
       AND c.territory_code = p.territory_code
     WHERE c.city_registry_id IS NULL;

    IF invalid_count <> 0 THEN
        RAISE EXCEPTION
            'R13 supplemental verify failed: % placement row(s) lack canonical city binding',
            invalid_count;
    END IF;
END
$verify$;

DO $verify$
DECLARE
    duplicate_count bigint;
BEGIN
    SELECT count(*)
      INTO duplicate_count
      FROM (
          SELECT
              nation_id,
              city_code
          FROM civilization.city_registry
          GROUP BY
              nation_id,
              city_code
          HAVING count(*) > 1
      ) q;

    IF duplicate_count <> 0 THEN
        RAISE EXCEPTION
            'R13 supplemental verify failed: duplicate city natural identity';
    END IF;

    SELECT count(*)
      INTO duplicate_count
      FROM (
          SELECT
              server_session_actor_key,
              nation_id,
              scope_code
          FROM civilization.nation_read_authorization
          WHERE authorization_status = 'active'
            AND effective_until IS NULL
          GROUP BY
              server_session_actor_key,
              nation_id,
              scope_code
          HAVING count(*) > 1
      ) q;

    IF duplicate_count <> 0 THEN
        RAISE EXCEPTION
            'R13 supplemental verify failed: duplicate current active authorization';
    END IF;
END
$verify$;

SELECT
    'PASS' AS result,
    'civilization' AS schema_name,
    2 AS supplemental_table_count;
