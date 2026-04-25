-- ============================================================
-- APP_COMMON RLS SQL DRAFT TIER1
-- CommonOS / app_common / reviewed canonical metadata protection
-- ============================================================

-- ------------------------------------------------------------
-- 0. Purpose
-- ------------------------------------------------------------
-- This SQL draft protects app_common base tables with:
-- - deny-by-default base-table posture
-- - RLS enabled on Tier1 tables
-- - internal-role-only base-table access
-- - no direct broad client read on raw base tables
--
-- This is a design draft. Actual production execution requires
-- environment-specific role review.

-- ------------------------------------------------------------
-- 1. Helper functions
-- ------------------------------------------------------------

CREATE OR REPLACE FUNCTION app_common.is_publishable_metadata(
  p_review_status app_common.review_status,
  p_is_active boolean,
  p_effective_from timestamptz,
  p_effective_to timestamptz
)
RETURNS boolean
LANGUAGE sql
STABLE
AS $$
  SELECT
    p_review_status = 'reviewed'
    AND p_is_active = true
    AND (p_effective_from IS NULL OR now() >= p_effective_from)
    AND (p_effective_to IS NULL OR now() < p_effective_to)
$$;

-- ------------------------------------------------------------
-- 2. Base-table revoke posture
-- ------------------------------------------------------------

DO $$
DECLARE
  tbl text;
BEGIN
  FOREACH tbl IN ARRAY ARRAY[
    'theme_registry',
    'design_token_set',
    'design_token_value',
    'component_catalog',
    'component_variant_catalog',
    'component_slot_rule',
    'locale_key',
    'locale_translation',
    'copy_template',
    'screen_template',
    'form_definition_metadata',
    'field_group_template',
    'form_section_template',
    'table_column_template',
    'filter_option_template',
    'sort_option_template',
    'sync_policy',
    'retry_policy',
    'queue_visual_rule',
    'sync_trigger_policy',
    'local_draft_policy',
    'queue_state_presentation_rule',
    'error_presentation_rule',
    'attachment_policy',
    'verify_template',
    'smoke_test_template',
    'release_gate_template',
    'client_capability_registry',
    'component_status_registry',
    'component_origin_reference'
  ] LOOP
    EXECUTE format('REVOKE ALL ON TABLE app_common.%I FROM PUBLIC', tbl);

    IF EXISTS (SELECT 1 FROM pg_roles WHERE rolname = 'anon') THEN
      EXECUTE format('REVOKE ALL ON TABLE app_common.%I FROM anon', tbl);
    END IF;

    IF EXISTS (SELECT 1 FROM pg_roles WHERE rolname = 'authenticated') THEN
      EXECUTE format('REVOKE ALL ON TABLE app_common.%I FROM authenticated', tbl);
    END IF;
  END LOOP;
END
$$;

-- ------------------------------------------------------------
-- 3. Enable and force RLS
-- ------------------------------------------------------------

DO $$
DECLARE
  tbl text;
BEGIN
  FOREACH tbl IN ARRAY ARRAY[
    'theme_registry',
    'design_token_set',
    'design_token_value',
    'component_catalog',
    'component_variant_catalog',
    'component_slot_rule',
    'locale_key',
    'locale_translation',
    'copy_template',
    'screen_template',
    'form_definition_metadata',
    'field_group_template',
    'form_section_template',
    'table_column_template',
    'filter_option_template',
    'sort_option_template',
    'sync_policy',
    'retry_policy',
    'queue_visual_rule',
    'sync_trigger_policy',
    'local_draft_policy',
    'queue_state_presentation_rule',
    'error_presentation_rule',
    'attachment_policy',
    'verify_template',
    'smoke_test_template',
    'release_gate_template',
    'client_capability_registry',
    'component_status_registry',
    'component_origin_reference'
  ] LOOP
    EXECUTE format('ALTER TABLE app_common.%I ENABLE ROW LEVEL SECURITY', tbl);
    EXECUTE format('ALTER TABLE app_common.%I FORCE ROW LEVEL SECURITY', tbl);
  END LOOP;
END
$$;

-- ------------------------------------------------------------
-- 4. Internal read / review / publish roles
-- ------------------------------------------------------------
-- Roles are checked before policy creation.
-- If a role does not exist, the policy block is skipped.

DO $$
DECLARE
  tbl text;
BEGIN
  IF EXISTS (SELECT 1 FROM pg_roles WHERE rolname = 'app_common_reader_internal') THEN
    FOREACH tbl IN ARRAY ARRAY[
      'theme_registry',
      'design_token_set',
      'design_token_value',
      'component_catalog',
      'component_variant_catalog',
      'component_slot_rule',
      'locale_key',
      'locale_translation',
      'copy_template',
      'screen_template',
      'form_definition_metadata',
      'field_group_template',
      'form_section_template',
      'table_column_template',
      'filter_option_template',
      'sort_option_template',
      'sync_policy',
      'retry_policy',
      'queue_visual_rule',
      'sync_trigger_policy',
      'local_draft_policy',
      'queue_state_presentation_rule',
      'error_presentation_rule',
      'attachment_policy',
      'verify_template',
      'smoke_test_template',
      'release_gate_template',
      'client_capability_registry',
      'component_status_registry',
      'component_origin_reference'
    ] LOOP
      EXECUTE format(
        'DROP POLICY IF EXISTS p_internal_select_%1$I ON app_common.%1$I',
        tbl
      );
      EXECUTE format(
        'CREATE POLICY p_internal_select_%1$I ON app_common.%1$I FOR SELECT TO app_common_reader_internal USING (true)',
        tbl
      );
    END LOOP;
  END IF;
END
$$;

DO $$
DECLARE
  tbl text;
BEGIN
  IF EXISTS (SELECT 1 FROM pg_roles WHERE rolname = 'app_common_reviewer') THEN
    FOREACH tbl IN ARRAY ARRAY[
      'theme_registry',
      'design_token_set',
      'design_token_value',
      'component_catalog',
      'component_variant_catalog',
      'component_slot_rule',
      'locale_key',
      'locale_translation',
      'copy_template',
      'screen_template',
      'form_definition_metadata',
      'field_group_template',
      'form_section_template',
      'table_column_template',
      'filter_option_template',
      'sort_option_template',
      'sync_policy',
      'retry_policy',
      'queue_visual_rule',
      'sync_trigger_policy',
      'local_draft_policy',
      'queue_state_presentation_rule',
      'error_presentation_rule',
      'attachment_policy',
      'verify_template',
      'smoke_test_template',
      'release_gate_template',
      'client_capability_registry',
      'component_status_registry',
      'component_origin_reference'
    ] LOOP
      EXECUTE format(
        'DROP POLICY IF EXISTS p_reviewer_select_%1$I ON app_common.%1$I',
        tbl
      );
      EXECUTE format(
        'CREATE POLICY p_reviewer_select_%1$I ON app_common.%1$I FOR SELECT TO app_common_reviewer USING (true)',
        tbl
      );

      EXECUTE format(
        'DROP POLICY IF EXISTS p_reviewer_modify_%1$I ON app_common.%1$I',
        tbl
      );
      EXECUTE format(
        'CREATE POLICY p_reviewer_modify_%1$I ON app_common.%1$I FOR ALL TO app_common_reviewer USING (true) WITH CHECK (true)',
        tbl
      );
    END LOOP;
  END IF;
END
$$;

DO $$
DECLARE
  tbl text;
BEGIN
  IF EXISTS (SELECT 1 FROM pg_roles WHERE rolname = 'app_common_publisher') THEN
    FOREACH tbl IN ARRAY ARRAY[
      'theme_registry',
      'design_token_set',
      'design_token_value',
      'component_catalog',
      'component_variant_catalog',
      'component_slot_rule',
      'locale_key',
      'locale_translation',
      'copy_template',
      'screen_template',
      'form_definition_metadata',
      'field_group_template',
      'form_section_template',
      'table_column_template',
      'filter_option_template',
      'sort_option_template',
      'sync_policy',
      'retry_policy',
      'queue_visual_rule',
      'sync_trigger_policy',
      'local_draft_policy',
      'queue_state_presentation_rule',
      'error_presentation_rule',
      'attachment_policy',
      'verify_template',
      'smoke_test_template',
      'release_gate_template',
      'client_capability_registry',
      'component_status_registry',
      'component_origin_reference'
    ] LOOP
      EXECUTE format(
        'DROP POLICY IF EXISTS p_publisher_select_%1$I ON app_common.%1$I',
        tbl
      );
      EXECUTE format(
        'CREATE POLICY p_publisher_select_%1$I ON app_common.%1$I FOR SELECT TO app_common_publisher USING (true)',
        tbl
      );

      EXECUTE format(
        'DROP POLICY IF EXISTS p_publisher_modify_%1$I ON app_common.%1$I',
        tbl
      );
      EXECUTE format(
        'CREATE POLICY p_publisher_modify_%1$I ON app_common.%1$I FOR UPDATE TO app_common_publisher USING (true) WITH CHECK (true)',
        tbl
      );
    END LOOP;
  END IF;
END
$$;

DO $$
DECLARE
  tbl text;
BEGIN
  IF EXISTS (SELECT 1 FROM pg_roles WHERE rolname = 'service_role') THEN
    FOREACH tbl IN ARRAY ARRAY[
      'theme_registry',
      'design_token_set',
      'design_token_value',
      'component_catalog',
      'component_variant_catalog',
      'component_slot_rule',
      'locale_key',
      'locale_translation',
      'copy_template',
      'screen_template',
      'form_definition_metadata',
      'field_group_template',
      'form_section_template',
      'table_column_template',
      'filter_option_template',
      'sort_option_template',
      'sync_policy',
      'retry_policy',
      'queue_visual_rule',
      'sync_trigger_policy',
      'local_draft_policy',
      'queue_state_presentation_rule',
      'error_presentation_rule',
      'attachment_policy',
      'verify_template',
      'smoke_test_template',
      'release_gate_template',
      'client_capability_registry',
      'component_status_registry',
      'component_origin_reference'
    ] LOOP
      EXECUTE format(
        'DROP POLICY IF EXISTS p_service_role_all_%1$I ON app_common.%1$I',
        tbl
      );
      EXECUTE format(
        'CREATE POLICY p_service_role_all_%1$I ON app_common.%1$I FOR ALL TO service_role USING (true) WITH CHECK (true)',
        tbl
      );
    END LOOP;
  END IF;
END
$$;

-- ------------------------------------------------------------
-- 5. Suggested grants for internal roles
-- ------------------------------------------------------------

DO $$
BEGIN
  IF EXISTS (SELECT 1 FROM pg_roles WHERE rolname = 'app_common_reader_internal') THEN
    GRANT USAGE ON SCHEMA app_common TO app_common_reader_internal;
  END IF;
  IF EXISTS (SELECT 1 FROM pg_roles WHERE rolname = 'app_common_reviewer') THEN
    GRANT USAGE ON SCHEMA app_common TO app_common_reviewer;
  END IF;
  IF EXISTS (SELECT 1 FROM pg_roles WHERE rolname = 'app_common_publisher') THEN
    GRANT USAGE ON SCHEMA app_common TO app_common_publisher;
  END IF;
  IF EXISTS (SELECT 1 FROM pg_roles WHERE rolname = 'service_role') THEN
    GRANT USAGE ON SCHEMA app_common TO service_role;
  END IF;
END
$$;

-- ------------------------------------------------------------
-- 6. Important note
-- ------------------------------------------------------------
-- This draft intentionally keeps field-level responsibility out of RLS.
-- Fine-grained field update restrictions should be enforced through
-- controlled server-side workflows, not by assuming RLS alone is enough.
