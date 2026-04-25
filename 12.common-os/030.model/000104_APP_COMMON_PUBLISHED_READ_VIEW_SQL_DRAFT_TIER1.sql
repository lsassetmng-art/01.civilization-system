-- ============================================================
-- APP_COMMON PUBLISHED READ VIEW SQL DRAFT TIER1
-- CommonOS / published metadata read path
-- ============================================================

-- ------------------------------------------------------------
-- 0. Purpose
-- ------------------------------------------------------------
-- These views expose only publishable metadata subsets.
-- Broad clients should prefer published views over raw base tables.

CREATE OR REPLACE VIEW app_common.v_theme_registry_published AS
SELECT *
  FROM app_common.theme_registry
 WHERE app_common.is_publishable_metadata(review_status, is_active, effective_from, effective_to);

CREATE OR REPLACE VIEW app_common.v_design_token_set_published AS
SELECT *
  FROM app_common.design_token_set
 WHERE app_common.is_publishable_metadata(review_status, is_active, effective_from, effective_to);

CREATE OR REPLACE VIEW app_common.v_design_token_value_published AS
SELECT *
  FROM app_common.design_token_value
 WHERE app_common.is_publishable_metadata(review_status, is_active, effective_from, effective_to);

CREATE OR REPLACE VIEW app_common.v_component_catalog_published AS
SELECT *
  FROM app_common.component_catalog
 WHERE app_common.is_publishable_metadata(review_status, is_active, effective_from, effective_to);

CREATE OR REPLACE VIEW app_common.v_component_variant_catalog_published AS
SELECT v.*
  FROM app_common.component_variant_catalog v
  JOIN app_common.component_catalog c
    ON c.id = v.component_id
 WHERE app_common.is_publishable_metadata(v.review_status, v.is_active, v.effective_from, v.effective_to)
   AND app_common.is_publishable_metadata(c.review_status, c.is_active, c.effective_from, c.effective_to);

CREATE OR REPLACE VIEW app_common.v_locale_key_published AS
SELECT *
  FROM app_common.locale_key
 WHERE app_common.is_publishable_metadata(review_status, is_active, effective_from, effective_to);

CREATE OR REPLACE VIEW app_common.v_locale_translation_published AS
SELECT t.*
  FROM app_common.locale_translation t
  JOIN app_common.locale_key k
    ON k.id = t.locale_key_id
 WHERE app_common.is_publishable_metadata(t.review_status, t.is_active, t.effective_from, t.effective_to)
   AND app_common.is_publishable_metadata(k.review_status, k.is_active, k.effective_from, k.effective_to);

CREATE OR REPLACE VIEW app_common.v_copy_template_published AS
SELECT *
  FROM app_common.copy_template
 WHERE app_common.is_publishable_metadata(review_status, is_active, effective_from, effective_to);

CREATE OR REPLACE VIEW app_common.v_screen_template_published AS
SELECT *
  FROM app_common.screen_template
 WHERE app_common.is_publishable_metadata(review_status, is_active, effective_from, effective_to);

CREATE OR REPLACE VIEW app_common.v_queue_visual_rule_published AS
SELECT *
  FROM app_common.queue_visual_rule
 WHERE app_common.is_publishable_metadata(review_status, is_active, effective_from, effective_to);

CREATE OR REPLACE VIEW app_common.v_queue_state_presentation_rule_published AS
SELECT *
  FROM app_common.queue_state_presentation_rule
 WHERE app_common.is_publishable_metadata(review_status, is_active, effective_from, effective_to);

CREATE OR REPLACE VIEW app_common.v_error_presentation_rule_published AS
SELECT *
  FROM app_common.error_presentation_rule
 WHERE app_common.is_publishable_metadata(review_status, is_active, effective_from, effective_to);

CREATE OR REPLACE VIEW app_common.v_attachment_policy_published AS
SELECT *
  FROM app_common.attachment_policy
 WHERE app_common.is_publishable_metadata(review_status, is_active, effective_from, effective_to);

-- ------------------------------------------------------------
-- 1. Optional grants to broad client roles
-- ------------------------------------------------------------
-- This remains conditional because environment role strategy may differ.

DO $$
DECLARE
  v text;
BEGIN
  IF EXISTS (SELECT 1 FROM pg_roles WHERE rolname = 'anon') THEN
    FOREACH v IN ARRAY ARRAY[
      'v_theme_registry_published',
      'v_design_token_set_published',
      'v_design_token_value_published',
      'v_component_catalog_published',
      'v_component_variant_catalog_published',
      'v_locale_key_published',
      'v_locale_translation_published',
      'v_copy_template_published',
      'v_screen_template_published',
      'v_queue_visual_rule_published',
      'v_queue_state_presentation_rule_published',
      'v_error_presentation_rule_published',
      'v_attachment_policy_published'
    ] LOOP
      EXECUTE format('GRANT SELECT ON app_common.%I TO anon', v);
    END LOOP;
  END IF;

  IF EXISTS (SELECT 1 FROM pg_roles WHERE rolname = 'authenticated') THEN
    FOREACH v IN ARRAY ARRAY[
      'v_theme_registry_published',
      'v_design_token_set_published',
      'v_design_token_value_published',
      'v_component_catalog_published',
      'v_component_variant_catalog_published',
      'v_locale_key_published',
      'v_locale_translation_published',
      'v_copy_template_published',
      'v_screen_template_published',
      'v_queue_visual_rule_published',
      'v_queue_state_presentation_rule_published',
      'v_error_presentation_rule_published',
      'v_attachment_policy_published'
    ] LOOP
      EXECUTE format('GRANT SELECT ON app_common.%I TO authenticated', v);
    END LOOP;
  END IF;
END
$$;

-- ------------------------------------------------------------
-- 2. Notes
-- ------------------------------------------------------------
-- Public read should come from published views or equivalent controlled
-- read path, not from unrestricted raw-table access.
