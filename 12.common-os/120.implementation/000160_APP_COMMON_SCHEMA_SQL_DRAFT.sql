-- ============================================================
-- APP_COMMON SCHEMA SQL DRAFT
-- ============================================================
-- status: draft
-- owner : Boss
-- author: Zero
-- purpose:
--   Initial physical SQL draft for the shared mutable metadata schema app_common.
--   This file is for review/fixup first. Do not treat this as final applied canon.
-- ============================================================

BEGIN;

CREATE SCHEMA IF NOT EXISTS app_common;

-- ------------------------------------------------------------
-- updated_at helper
-- ------------------------------------------------------------
CREATE OR REPLACE FUNCTION app_common.fn_set_updated_at()
RETURNS trigger
LANGUAGE plpgsql
AS $$
BEGIN
  NEW.updated_at := now();
  RETURN NEW;
END;
$$;

-- ============================================================
-- 1. theme_registry
-- ============================================================
CREATE TABLE IF NOT EXISTS app_common.theme_registry (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  code text NOT NULL UNIQUE,
  name text NOT NULL,
  description text NULL,
  is_active boolean NOT NULL DEFAULT true,
  sort_order integer NOT NULL DEFAULT 1000,
  metadata jsonb NOT NULL DEFAULT '{}'::jsonb,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now()
);

CREATE INDEX IF NOT EXISTS idx_theme_registry_active
  ON app_common.theme_registry (is_active, sort_order);

DROP TRIGGER IF EXISTS trg_theme_registry_set_updated_at ON app_common.theme_registry;
CREATE TRIGGER trg_theme_registry_set_updated_at
BEFORE UPDATE ON app_common.theme_registry
FOR EACH ROW
EXECUTE FUNCTION app_common.fn_set_updated_at();

-- ============================================================
-- 2. design_token_set
-- ============================================================
CREATE TABLE IF NOT EXISTS app_common.design_token_set (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  code text NOT NULL,
  theme_code text NOT NULL,
  name text NOT NULL,
  description text NULL,
  version_no integer NOT NULL DEFAULT 1,
  is_active boolean NOT NULL DEFAULT true,
  sort_order integer NOT NULL DEFAULT 1000,
  metadata jsonb NOT NULL DEFAULT '{}'::jsonb,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  CONSTRAINT uq_design_token_set_code_version UNIQUE (code, version_no),
  CONSTRAINT fk_design_token_set_theme_code
    FOREIGN KEY (theme_code)
    REFERENCES app_common.theme_registry(code)
    ON UPDATE CASCADE
);

CREATE INDEX IF NOT EXISTS idx_design_token_set_theme
  ON app_common.design_token_set (theme_code, is_active, sort_order);

DROP TRIGGER IF EXISTS trg_design_token_set_updated_at ON app_common.design_token_set;
CREATE TRIGGER trg_design_token_set_updated_at
BEFORE UPDATE ON app_common.design_token_set
FOR EACH ROW
EXECUTE FUNCTION app_common.fn_set_updated_at();

-- ============================================================
-- 3. design_token_value
-- ============================================================
CREATE TABLE IF NOT EXISTS app_common.design_token_value (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  token_set_code text NOT NULL,
  token_key text NOT NULL,
  token_value_text text NOT NULL,
  token_value_type text NOT NULL DEFAULT 'text',
  locale_code text NULL,
  metadata jsonb NOT NULL DEFAULT '{}'::jsonb,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  CONSTRAINT uq_design_token_value UNIQUE (token_set_code, token_key, locale_code),
  CONSTRAINT fk_design_token_value_token_set_code
    FOREIGN KEY (token_set_code)
    REFERENCES app_common.design_token_set(code)
    ON UPDATE CASCADE
);

CREATE INDEX IF NOT EXISTS idx_design_token_value_set_key
  ON app_common.design_token_value (token_set_code, token_key);

DROP TRIGGER IF EXISTS trg_design_token_value_updated_at ON app_common.design_token_value;
CREATE TRIGGER trg_design_token_value_updated_at
BEFORE UPDATE ON app_common.design_token_value
FOR EACH ROW
EXECUTE FUNCTION app_common.fn_set_updated_at();

-- ============================================================
-- 4. locale_key
-- ============================================================
CREATE TABLE IF NOT EXISTS app_common.locale_key (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  key_code text NOT NULL UNIQUE,
  domain_code text NOT NULL DEFAULT 'shared',
  description text NULL,
  is_active boolean NOT NULL DEFAULT true,
  metadata jsonb NOT NULL DEFAULT '{}'::jsonb,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now()
);

CREATE INDEX IF NOT EXISTS idx_locale_key_domain_active
  ON app_common.locale_key (domain_code, is_active);

DROP TRIGGER IF EXISTS trg_locale_key_updated_at ON app_common.locale_key;
CREATE TRIGGER trg_locale_key_updated_at
BEFORE UPDATE ON app_common.locale_key
FOR EACH ROW
EXECUTE FUNCTION app_common.fn_set_updated_at();

-- ============================================================
-- 5. locale_translation
-- ============================================================
CREATE TABLE IF NOT EXISTS app_common.locale_translation (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  key_code text NOT NULL,
  locale_code text NOT NULL,
  text_value text NOT NULL,
  is_active boolean NOT NULL DEFAULT true,
  metadata jsonb NOT NULL DEFAULT '{}'::jsonb,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  CONSTRAINT uq_locale_translation UNIQUE (key_code, locale_code),
  CONSTRAINT fk_locale_translation_key_code
    FOREIGN KEY (key_code)
    REFERENCES app_common.locale_key(key_code)
    ON UPDATE CASCADE
);

CREATE INDEX IF NOT EXISTS idx_locale_translation_locale_active
  ON app_common.locale_translation (locale_code, is_active);

DROP TRIGGER IF EXISTS trg_locale_translation_updated_at ON app_common.locale_translation;
CREATE TRIGGER trg_locale_translation_updated_at
BEFORE UPDATE ON app_common.locale_translation
FOR EACH ROW
EXECUTE FUNCTION app_common.fn_set_updated_at();

-- ============================================================
-- 6. component_catalog
-- ============================================================
CREATE TABLE IF NOT EXISTS app_common.component_catalog (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  code text NOT NULL UNIQUE,
  name text NOT NULL,
  description text NULL,
  category_code text NOT NULL,
  is_active boolean NOT NULL DEFAULT true,
  sort_order integer NOT NULL DEFAULT 1000,
  metadata jsonb NOT NULL DEFAULT '{}'::jsonb,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now()
);

CREATE INDEX IF NOT EXISTS idx_component_catalog_category_active
  ON app_common.component_catalog (category_code, is_active, sort_order);

DROP TRIGGER IF EXISTS trg_component_catalog_updated_at ON app_common.component_catalog;
CREATE TRIGGER trg_component_catalog_updated_at
BEFORE UPDATE ON app_common.component_catalog
FOR EACH ROW
EXECUTE FUNCTION app_common.fn_set_updated_at();

-- ============================================================
-- 7. component_variant_catalog
-- ============================================================
CREATE TABLE IF NOT EXISTS app_common.component_variant_catalog (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  component_code text NOT NULL,
  variant_code text NOT NULL,
  name text NOT NULL,
  description text NULL,
  theme_code text NULL,
  is_active boolean NOT NULL DEFAULT true,
  sort_order integer NOT NULL DEFAULT 1000,
  metadata jsonb NOT NULL DEFAULT '{}'::jsonb,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  CONSTRAINT uq_component_variant UNIQUE (component_code, variant_code, theme_code),
  CONSTRAINT fk_component_variant_component_code
    FOREIGN KEY (component_code)
    REFERENCES app_common.component_catalog(code)
    ON UPDATE CASCADE,
  CONSTRAINT fk_component_variant_theme_code
    FOREIGN KEY (theme_code)
    REFERENCES app_common.theme_registry(code)
    ON UPDATE CASCADE
);

CREATE INDEX IF NOT EXISTS idx_component_variant_component_active
  ON app_common.component_variant_catalog (component_code, is_active, sort_order);

DROP TRIGGER IF EXISTS trg_component_variant_catalog_updated_at ON app_common.component_variant_catalog;
CREATE TRIGGER trg_component_variant_catalog_updated_at
BEFORE UPDATE ON app_common.component_variant_catalog
FOR EACH ROW
EXECUTE FUNCTION app_common.fn_set_updated_at();

-- ============================================================
-- 8. screen_template
-- ============================================================
CREATE TABLE IF NOT EXISTS app_common.screen_template (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  code text NOT NULL UNIQUE,
  name text NOT NULL,
  template_type text NOT NULL,
  layout_code text NOT NULL,
  is_active boolean NOT NULL DEFAULT true,
  metadata jsonb NOT NULL DEFAULT '{}'::jsonb,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now()
);

CREATE INDEX IF NOT EXISTS idx_screen_template_type_active
  ON app_common.screen_template (template_type, is_active);

DROP TRIGGER IF EXISTS trg_screen_template_updated_at ON app_common.screen_template;
CREATE TRIGGER trg_screen_template_updated_at
BEFORE UPDATE ON app_common.screen_template
FOR EACH ROW
EXECUTE FUNCTION app_common.fn_set_updated_at();

-- ============================================================
-- 9. sync_policy
-- ============================================================
CREATE TABLE IF NOT EXISTS app_common.sync_policy (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  code text NOT NULL UNIQUE,
  trigger_on_launch boolean NOT NULL DEFAULT true,
  trigger_on_resume boolean NOT NULL DEFAULT true,
  trigger_on_online boolean NOT NULL DEFAULT true,
  manual_sync_allowed boolean NOT NULL DEFAULT true,
  is_active boolean NOT NULL DEFAULT true,
  metadata jsonb NOT NULL DEFAULT '{}'::jsonb,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now()
);

CREATE INDEX IF NOT EXISTS idx_sync_policy_active
  ON app_common.sync_policy (is_active);

DROP TRIGGER IF EXISTS trg_sync_policy_updated_at ON app_common.sync_policy;
CREATE TRIGGER trg_sync_policy_updated_at
BEFORE UPDATE ON app_common.sync_policy
FOR EACH ROW
EXECUTE FUNCTION app_common.fn_set_updated_at();

-- ============================================================
-- 10. retry_policy
-- ============================================================
CREATE TABLE IF NOT EXISTS app_common.retry_policy (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  code text NOT NULL UNIQUE,
  retry_strategy_code text NOT NULL,
  max_retry_count integer NOT NULL DEFAULT 5,
  is_active boolean NOT NULL DEFAULT true,
  metadata jsonb NOT NULL DEFAULT '{}'::jsonb,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now()
);

CREATE INDEX IF NOT EXISTS idx_retry_policy_active
  ON app_common.retry_policy (is_active);

DROP TRIGGER IF EXISTS trg_retry_policy_updated_at ON app_common.retry_policy;
CREATE TRIGGER trg_retry_policy_updated_at
BEFORE UPDATE ON app_common.retry_policy
FOR EACH ROW
EXECUTE FUNCTION app_common.fn_set_updated_at();

-- ============================================================
-- 11. queue_visual_rule
-- ============================================================
CREATE TABLE IF NOT EXISTS app_common.queue_visual_rule (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  code text NOT NULL UNIQUE,
  queue_state_code text NOT NULL,
  badge_style_code text NOT NULL,
  severity_code text NOT NULL,
  is_active boolean NOT NULL DEFAULT true,
  metadata jsonb NOT NULL DEFAULT '{}'::jsonb,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now()
);

CREATE INDEX IF NOT EXISTS idx_queue_visual_rule_state_active
  ON app_common.queue_visual_rule (queue_state_code, is_active);

DROP TRIGGER IF EXISTS trg_queue_visual_rule_updated_at ON app_common.queue_visual_rule;
CREATE TRIGGER trg_queue_visual_rule_updated_at
BEFORE UPDATE ON app_common.queue_visual_rule
FOR EACH ROW
EXECUTE FUNCTION app_common.fn_set_updated_at();

-- ============================================================
-- 12. optional seed examples
-- ============================================================
INSERT INTO app_common.theme_registry (code, name, description)
VALUES
  ('default', 'Default', 'Default shared theme'),
  ('erp_dense', 'ERP Dense', 'Dense layout theme for ERP-like screens'),
  ('high_contrast', 'High Contrast', 'Accessibility-oriented theme')
ON CONFLICT (code) DO NOTHING;

INSERT INTO app_common.sync_policy (
  code,
  trigger_on_launch,
  trigger_on_resume,
  trigger_on_online,
  manual_sync_allowed
)
VALUES
  ('standard_offline_first', true, true, true, true)
ON CONFLICT (code) DO NOTHING;

INSERT INTO app_common.retry_policy (
  code,
  retry_strategy_code,
  max_retry_count
)
VALUES
  ('standard_retry', 'exponential_backoff', 5)
ON CONFLICT (code) DO NOTHING;

INSERT INTO app_common.queue_visual_rule (
  code,
  queue_state_code,
  badge_style_code,
  severity_code
)
VALUES
  ('queue_pending',  'pending',    'info',    'low'),
  ('queue_retry',    'retry_wait', 'warning', 'medium'),
  ('queue_failed',   'failed',     'danger',  'high'),
  ('queue_conflict', 'conflict',   'danger',  'high'),
  ('queue_sent',     'sent',       'success', 'low')
ON CONFLICT (code) DO NOTHING;

COMMIT;
