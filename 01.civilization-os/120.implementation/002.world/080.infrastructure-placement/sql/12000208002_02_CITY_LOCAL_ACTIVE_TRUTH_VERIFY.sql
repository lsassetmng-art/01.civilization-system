\set ON_ERROR_STOP on

-- R13 city-local active truth verification.
-- Expected result: all assertions complete without exception.

DO $verify$
DECLARE
    missing_count bigint;
BEGIN
    SELECT count(*)
      INTO missing_count
      FROM (
          VALUES
              ('territory_record'),
              ('facility_registry'),
              ('district_registry'),
              ('active_facility_placement')
      ) AS expected(table_name)
      WHERE to_regclass(
          'civilization_os.' || expected.table_name
      ) IS NULL;

    IF missing_count <> 0 THEN
        RAISE EXCEPTION
            'R13 verify failed: % required table(s) missing',
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
           'territory_record',
           'facility_registry',
           'district_registry',
           'active_facility_placement'
       )
       AND c.relkind IN ('r', 'p');

    IF public_duplicate_count <> 0 THEN
        RAISE EXCEPTION
            'R13 verify failed: public schema contains % conflicting table(s)',
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
     WHERE n.nspname = 'civilization_os'
       AND c.conname IN (
           'pk_territory_record',
           'uq_territory_record_nation_code',
           'ck_territory_record_status',
           'ck_territory_record_effective_period',
           'pk_facility_registry',
           'uq_facility_registry_domain_code',
           'ck_facility_registry_status',
           'pk_district_registry',
           'uq_district_registry_nation_city_code',
           'uq_district_registry_binding',
           'fk_district_registry_territory',
           'ck_district_registry_status',
           'ck_district_registry_source_state_version',
           'pk_active_facility_placement',
           'uq_active_facility_placement_version',
           'fk_active_facility_placement_facility',
           'fk_active_facility_placement_territory',
           'fk_active_facility_placement_district',
           'ck_active_facility_placement_version',
           'ck_active_facility_placement_source_state_version',
           'ck_active_facility_placement_status',
           'ck_active_facility_placement_effective_period'
       );

    IF constraint_count <> 22 THEN
        RAISE EXCEPTION
            'R13 verify failed: expected 22 named constraints, found %',
            constraint_count;
    END IF;
END
$verify$;

DO $verify$
BEGIN
    IF to_regclass(
        'civilization_os.uq_active_facility_placement_current_active'
    ) IS NULL THEN
        RAISE EXCEPTION
            'R13 verify failed: current-active unique index missing';
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
          SELECT nation_id, territory_code
            FROM civilization_os.territory_record
           GROUP BY nation_id, territory_code
          HAVING count(*) > 1
      ) q;

    IF duplicate_count <> 0 THEN
        RAISE EXCEPTION
            'R13 verify failed: duplicate territory natural keys';
    END IF;

    SELECT count(*)
      INTO duplicate_count
      FROM (
          SELECT facility_domain, facility_code
            FROM civilization_os.facility_registry
           GROUP BY facility_domain, facility_code
          HAVING count(*) > 1
      ) q;

    IF duplicate_count <> 0 THEN
        RAISE EXCEPTION
            'R13 verify failed: duplicate facility natural keys';
    END IF;

    SELECT count(*)
      INTO duplicate_count
      FROM (
          SELECT nation_id, city_code, district_code
            FROM civilization_os.district_registry
           GROUP BY nation_id, city_code, district_code
          HAVING count(*) > 1
      ) q;

    IF duplicate_count <> 0 THEN
        RAISE EXCEPTION
            'R13 verify failed: duplicate district natural keys';
    END IF;
END
$verify$;

DO $verify$
DECLARE
    invalid_count bigint;
BEGIN
    SELECT count(*)
      INTO invalid_count
      FROM (
          SELECT facility_registry_id
            FROM civilization_os.active_facility_placement
           WHERE placement_status = 'active'
             AND effective_until IS NULL
           GROUP BY facility_registry_id
          HAVING count(*) > 1
      ) q;

    IF invalid_count <> 0 THEN
        RAISE EXCEPTION
            'R13 verify failed: multiple current active placements';
    END IF;
END
$verify$;

DO $verify$
DECLARE
    invalid_count bigint;
BEGIN
    SELECT count(*)
      INTO invalid_count
      FROM (
          SELECT
              facility_registry_id,
              placement_version,
              source_state_version,
              lag(placement_version) OVER (
                  PARTITION BY facility_registry_id
                  ORDER BY placement_version
              ) AS prior_placement_version,
              lag(source_state_version) OVER (
                  PARTITION BY facility_registry_id
                  ORDER BY placement_version
              ) AS prior_source_state_version
          FROM civilization_os.active_facility_placement
      ) q
     WHERE prior_placement_version IS NOT NULL
       AND (
           placement_version <= prior_placement_version
           OR source_state_version <= prior_source_state_version
       );

    IF invalid_count <> 0 THEN
        RAISE EXCEPTION
            'R13 verify failed: non-monotonic placement/source state detected';
    END IF;
END
$verify$;

SELECT
    'PASS' AS result,
    'civilization_os' AS schema_name,
    4 AS required_table_count;
