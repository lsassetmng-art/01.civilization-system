\set ON_ERROR_STOP on

-- DESTRUCTIVE ROLLBACK PREPARATION.
-- Execution requires a separate explicit DB GO.
-- Repair-first policy applies.
-- This rollback refuses destructive removal when canonical rows exist.

BEGIN;

DO $guard$
DECLARE
    row_count bigint := 0;
BEGIN
    IF to_regclass('civilization.active_facility_placement') IS NOT NULL THEN
        EXECUTE
            'SELECT count(*) FROM civilization.active_facility_placement'
        INTO row_count;

        IF row_count <> 0 THEN
            RAISE EXCEPTION
                'Rollback refused: active_facility_placement contains % row(s)',
                row_count;
        END IF;
    END IF;

    IF to_regclass('civilization.district_registry') IS NOT NULL THEN
        EXECUTE
            'SELECT count(*) FROM civilization.district_registry'
        INTO row_count;

        IF row_count <> 0 THEN
            RAISE EXCEPTION
                'Rollback refused: district_registry contains % row(s)',
                row_count;
        END IF;
    END IF;

    IF to_regclass('civilization.facility_registry') IS NOT NULL THEN
        EXECUTE
            'SELECT count(*) FROM civilization.facility_registry'
        INTO row_count;

        IF row_count <> 0 THEN
            RAISE EXCEPTION
                'Rollback refused: facility_registry contains % row(s)',
                row_count;
        END IF;
    END IF;

    IF to_regclass('civilization.territory_record') IS NOT NULL THEN
        EXECUTE
            'SELECT count(*) FROM civilization.territory_record'
        INTO row_count;

        IF row_count <> 0 THEN
            RAISE EXCEPTION
                'Rollback refused: territory_record contains % row(s)',
                row_count;
        END IF;
    END IF;
END
$guard$;

DROP TABLE IF EXISTS
    civilization.active_facility_placement;

DROP TABLE IF EXISTS
    civilization.district_registry;

DROP TABLE IF EXISTS
    civilization.facility_registry;

DROP TABLE IF EXISTS
    civilization.territory_record;

-- civilization schema is intentionally preserved.
-- Other CivilizationOS objects may share this canonical schema.

COMMIT;
