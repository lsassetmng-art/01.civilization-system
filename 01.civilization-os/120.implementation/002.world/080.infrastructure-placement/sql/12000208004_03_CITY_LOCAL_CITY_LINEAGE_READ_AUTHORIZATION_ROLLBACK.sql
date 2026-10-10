\set ON_ERROR_STOP on

-- DESTRUCTIVE SUPPLEMENTAL ROLLBACK PREPARATION.
-- Execution requires separate explicit DB GO.
-- Repair-first policy applies.

BEGIN;

DO $guard$
DECLARE
    row_count bigint := 0;
BEGIN
    IF to_regclass(
        'civilization.nation_read_authorization'
    ) IS NOT NULL THEN
        EXECUTE
            'SELECT count(*) FROM civilization.nation_read_authorization'
        INTO row_count;

        IF row_count <> 0 THEN
            RAISE EXCEPTION
                'Rollback refused: nation_read_authorization contains % row(s)',
                row_count;
        END IF;
    END IF;

    IF to_regclass(
        'civilization.city_registry'
    ) IS NOT NULL THEN
        EXECUTE
            'SELECT count(*) FROM civilization.city_registry'
        INTO row_count;

        IF row_count <> 0 THEN
            RAISE EXCEPTION
                'Rollback refused: city_registry contains % row(s)',
                row_count;
        END IF;
    END IF;

    IF to_regclass(
        'civilization.district_registry'
    ) IS NOT NULL THEN
        EXECUTE
            'SELECT count(*) FROM civilization.district_registry'
        INTO row_count;

        IF row_count <> 0 THEN
            RAISE EXCEPTION
                'Rollback refused: district_registry contains % row(s)',
                row_count;
        END IF;
    END IF;

    IF to_regclass(
        'civilization.active_facility_placement'
    ) IS NOT NULL THEN
        EXECUTE
            'SELECT count(*) FROM civilization.active_facility_placement'
        INTO row_count;

        IF row_count <> 0 THEN
            RAISE EXCEPTION
                'Rollback refused: active_facility_placement contains % row(s)',
                row_count;
        END IF;
    END IF;
END
$guard$;

ALTER TABLE civilization.active_facility_placement
    DROP CONSTRAINT IF EXISTS
        fk_active_facility_placement_city;

ALTER TABLE civilization.district_registry
    DROP CONSTRAINT IF EXISTS
        fk_district_registry_city;

DROP TABLE IF EXISTS
    civilization.nation_read_authorization;

DROP TABLE IF EXISTS
    civilization.city_registry;

-- civilization schema and original four R13 relations are preserved.

COMMIT;
