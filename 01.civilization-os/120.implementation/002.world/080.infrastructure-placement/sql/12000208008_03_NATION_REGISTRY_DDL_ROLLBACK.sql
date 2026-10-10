\set ON_ERROR_STOP on

BEGIN;

DO $$
BEGIN
  IF EXISTS (
    SELECT 1 FROM civilization.nation_registry
  ) THEN
    RAISE EXCEPTION
      'rollback refused: nation_registry contains canonical rows';
  END IF;

  IF EXISTS (
    SELECT 1 FROM civilization.territory_record
  ) THEN
    RAISE EXCEPTION
      'rollback refused: territory_record contains canonical rows';
  END IF;

  IF EXISTS (
    SELECT 1 FROM civilization.facility_registry
  ) THEN
    RAISE EXCEPTION
      'rollback refused: facility_registry contains canonical rows';
  END IF;

  IF EXISTS (
    SELECT 1 FROM civilization.nation_read_authorization
  ) THEN
    RAISE EXCEPTION
      'rollback refused: nation_read_authorization contains canonical rows';
  END IF;
END
$$;

ALTER TABLE civilization.nation_read_authorization
  DROP CONSTRAINT IF EXISTS
  fk_nation_read_authorization_nation;

ALTER TABLE civilization.facility_registry
  DROP CONSTRAINT IF EXISTS
  fk_facility_registry_owner_nation;

ALTER TABLE civilization.territory_record
  DROP CONSTRAINT IF EXISTS
  fk_territory_record_nation;

DROP TABLE civilization.nation_registry;

COMMIT;
