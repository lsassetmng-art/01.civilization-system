\set ON_ERROR_STOP on

DO $$
BEGIN
  IF to_regclass(
    'civilization.nation_registry'
  ) IS NULL THEN
    RAISE EXCEPTION
      'civilization.nation_registry missing';
  END IF;
END
$$;

DO $$
DECLARE
  constraint_count integer;
BEGIN
  SELECT count(*)
  INTO constraint_count
  FROM pg_catalog.pg_constraint c
  JOIN pg_catalog.pg_namespace n
    ON n.oid = c.connamespace
  WHERE n.nspname = 'civilization'
    AND c.conname IN (
      'pk_nation_registry',
      'uq_nation_registry_code',
      'ck_nation_registry_code_nonempty',
      'ck_nation_registry_name_nonempty',
      'ck_nation_registry_status',
      'ck_nation_registry_source_state_version',
      'ck_nation_registry_effective_period',
      'fk_territory_record_nation',
      'fk_facility_registry_owner_nation',
      'fk_nation_read_authorization_nation'
    );

  IF constraint_count <> 10 THEN
    RAISE EXCEPTION
      'expected 10 nation-registry constraints, found %',
      constraint_count;
  END IF;
END
$$;

DO $$
BEGIN
  IF EXISTS (
    SELECT 1
    FROM pg_catalog.pg_class c
    JOIN pg_catalog.pg_namespace n
      ON n.oid = c.relnamespace
    WHERE n.nspname = 'public'
      AND c.relname = 'nation_registry'
  ) THEN
    RAISE EXCEPTION
      'public.nation_registry is prohibited';
  END IF;
END
$$;

DO $$
BEGIN
  IF EXISTS (
    SELECT 1
    FROM civilization.nation_registry
  ) THEN
    RAISE EXCEPTION
      'nation_registry DDL verification expected zero rows';
  END IF;
END
$$;

SELECT
  'PASS' AS result,
  'civilization' AS schema_name,
  1 AS nation_registry_table_count,
  10 AS nation_registry_constraint_count;
