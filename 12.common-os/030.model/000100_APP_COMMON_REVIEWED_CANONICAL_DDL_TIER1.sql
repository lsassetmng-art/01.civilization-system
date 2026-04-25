-- ============================================================
-- APP_COMMON REVIEWED CANONICAL DDL TIER1
-- CommonOS / shared mutable metadata / additive design DDL
-- ============================================================

CREATE SCHEMA IF NOT EXISTS app_common;

CREATE EXTENSION IF NOT EXISTS pgcrypto;

DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1
      FROM pg_type t
      JOIN pg_namespace n
        ON n.oid = t.typnamespace
     WHERE n.nspname = 'app_common'
       AND t.typname = 'review_status'
  ) THEN
    CREATE TYPE app_common.review_status AS ENUM (
      'draft',
      'review_pending',
      'reviewed',
      'deprecated',
      'retired'
    );
  END IF;
END
$$;

DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1
      FROM pg_type t
      JOIN pg_namespace n
        ON n.oid = t.typnamespace
     WHERE n.nspname = 'app_common'
       AND t.typname = 'canonical_status'
  ) THEN
    CREATE TYPE app_common.canonical_status AS ENUM (
      'origin_discovered',
      'origin_reviewed',
      'family_normalized',
      'common_review_pending',
      'current_wave_accepted',
      'hold',
      'implementation_ready',
      'implemented',
      'adopted',
      'superseded',
      'rejected'
    );
  END IF;
END
$$;

DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1
      FROM pg_type t
      JOIN pg_namespace n
        ON n.oid = t.typnamespace
     WHERE n.nspname = 'app_common'
       AND t.typname = 'queue_state'
  ) THEN
    CREATE TYPE app_common.queue_state AS ENUM (
      'pending',
      'processing',
      'retry_wait',
      'sent',
      'failed',
      'cancelled',
      'conflict'
    );
  END IF;
END
$$;

DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1
      FROM pg_type t
      JOIN pg_namespace n
        ON n.oid = t.typnamespace
     WHERE n.nspname = 'app_common'
       AND t.typname = 'evidence_strength'
  ) THEN
    CREATE TYPE app_common.evidence_strength AS ENUM (
      'weak',
      'moderate',
      'strong'
    );
  END IF;
END
$$;

CREATE OR REPLACE FUNCTION app_common.touch_updated_at()
RETURNS trigger
LANGUAGE plpgsql
AS $$
BEGIN
  NEW.updated_at := now();
  RETURN NEW;
END
$$;

-- ============================================================
-- 1. THEME / TOKEN
-- ============================================================

CREATE TABLE IF NOT EXISTS app_common.theme_registry (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  code text NOT NULL,
  version_no integer NOT NULL DEFAULT 1 CHECK (version_no > 0),
  review_status app_common.review_status NOT NULL DEFAULT 'reviewed',
  is_active boolean NOT NULL DEFAULT true,
  sort_order integer NOT NULL DEFAULT 1000,
  theme_name text NOT NULL,
  theme_type text NOT NULL DEFAULT 'default',
  description text NOT NULL DEFAULT '',
  target_scope_type text NOT NULL DEFAULT 'global',
  target_scope_code text NOT NULL DEFAULT 'all',
  definition_json jsonb NOT NULL DEFAULT '{}'::jsonb,
  effective_from timestamptz NULL,
  effective_to timestamptz NULL,
  reviewed_at timestamptz NULL,
  reviewed_by text NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  UNIQUE (code, version_no)
);

CREATE TABLE IF NOT EXISTS app_common.design_token_set (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  code text NOT NULL,
  version_no integer NOT NULL DEFAULT 1 CHECK (version_no > 0),
  review_status app_common.review_status NOT NULL DEFAULT 'reviewed',
  is_active boolean NOT NULL DEFAULT true,
  sort_order integer NOT NULL DEFAULT 1000,
  token_set_name text NOT NULL,
  token_domain text NOT NULL DEFAULT 'ui',
  description text NOT NULL DEFAULT '',
  definition_json jsonb NOT NULL DEFAULT '{}'::jsonb,
  effective_from timestamptz NULL,
  effective_to timestamptz NULL,
  reviewed_at timestamptz NULL,
  reviewed_by text NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  UNIQUE (code, version_no)
);

CREATE TABLE IF NOT EXISTS app_common.design_token_value (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  code text NOT NULL,
  version_no integer NOT NULL DEFAULT 1 CHECK (version_no > 0),
  review_status app_common.review_status NOT NULL DEFAULT 'reviewed',
  is_active boolean NOT NULL DEFAULT true,
  sort_order integer NOT NULL DEFAULT 1000,
  token_set_id uuid NOT NULL REFERENCES app_common.design_token_set(id),
  theme_id uuid NULL REFERENCES app_common.theme_registry(id),
  token_name text NOT NULL,
  token_category text NOT NULL,
  value_type text NOT NULL DEFAULT 'text',
  token_value text NOT NULL,
  unit text NOT NULL DEFAULT '',
  definition_json jsonb NOT NULL DEFAULT '{}'::jsonb,
  effective_from timestamptz NULL,
  effective_to timestamptz NULL,
  reviewed_at timestamptz NULL,
  reviewed_by text NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  UNIQUE (code, version_no),
  UNIQUE (token_set_id, COALESCE(theme_id, '00000000-0000-0000-0000-000000000000'::uuid), token_name, version_no)
);

-- ============================================================
-- 2. COMPONENT CATALOG
-- ============================================================

CREATE TABLE IF NOT EXISTS app_common.component_catalog (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  code text NOT NULL,
  version_no integer NOT NULL DEFAULT 1 CHECK (version_no > 0),
  review_status app_common.review_status NOT NULL DEFAULT 'reviewed',
  canonical_status app_common.canonical_status NOT NULL DEFAULT 'current_wave_accepted',
  is_active boolean NOT NULL DEFAULT true,
  sort_order integer NOT NULL DEFAULT 1000,
  component_name text NOT NULL,
  component_class text NOT NULL,
  component_layer text NOT NULL,
  canonical_owner text NOT NULL DEFAULT 'CommonOS',
  description text NOT NULL DEFAULT '',
  implementation_state text NOT NULL DEFAULT 'design_only',
  target_scope_type text NOT NULL DEFAULT 'global',
  target_scope_code text NOT NULL DEFAULT 'all',
  definition_json jsonb NOT NULL DEFAULT '{}'::jsonb,
  effective_from timestamptz NULL,
  effective_to timestamptz NULL,
  reviewed_at timestamptz NULL,
  reviewed_by text NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  UNIQUE (code, version_no)
);

CREATE TABLE IF NOT EXISTS app_common.component_variant_catalog (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  code text NOT NULL,
  version_no integer NOT NULL DEFAULT 1 CHECK (version_no > 0),
  review_status app_common.review_status NOT NULL DEFAULT 'reviewed',
  is_active boolean NOT NULL DEFAULT true,
  sort_order integer NOT NULL DEFAULT 1000,
  component_id uuid NOT NULL REFERENCES app_common.component_catalog(id),
  variant_name text NOT NULL,
  variant_group text NOT NULL,
  density_mode text NOT NULL DEFAULT '',
  emphasis_mode text NOT NULL DEFAULT '',
  state_mode text NOT NULL DEFAULT '',
  viewport_hint text NOT NULL DEFAULT '',
  accessibility_note text NOT NULL DEFAULT '',
  definition_json jsonb NOT NULL DEFAULT '{}'::jsonb,
  effective_from timestamptz NULL,
  effective_to timestamptz NULL,
  reviewed_at timestamptz NULL,
  reviewed_by text NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  UNIQUE (code, version_no),
  UNIQUE (component_id, variant_name, version_no)
);

CREATE TABLE IF NOT EXISTS app_common.component_slot_rule (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  code text NOT NULL,
  version_no integer NOT NULL DEFAULT 1 CHECK (version_no > 0),
  review_status app_common.review_status NOT NULL DEFAULT 'reviewed',
  is_active boolean NOT NULL DEFAULT true,
  sort_order integer NOT NULL DEFAULT 1000,
  component_id uuid NOT NULL REFERENCES app_common.component_catalog(id),
  variant_id uuid NULL REFERENCES app_common.component_variant_catalog(id),
  slot_name text NOT NULL,
  slot_rule_type text NOT NULL DEFAULT 'optional',
  display_rule_json jsonb NOT NULL DEFAULT '{}'::jsonb,
  effective_from timestamptz NULL,
  effective_to timestamptz NULL,
  reviewed_at timestamptz NULL,
  reviewed_by text NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  UNIQUE (code, version_no)
);

-- ============================================================
-- 3. LOCALE / COPY
-- ============================================================

CREATE TABLE IF NOT EXISTS app_common.locale_key (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  code text NOT NULL,
  version_no integer NOT NULL DEFAULT 1 CHECK (version_no > 0),
  review_status app_common.review_status NOT NULL DEFAULT 'reviewed',
  is_active boolean NOT NULL DEFAULT true,
  sort_order integer NOT NULL DEFAULT 1000,
  key_name text NOT NULL,
  namespace text NOT NULL DEFAULT 'common',
  description text NOT NULL DEFAULT '',
  effective_from timestamptz NULL,
  effective_to timestamptz NULL,
  reviewed_at timestamptz NULL,
  reviewed_by text NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  UNIQUE (code, version_no),
  UNIQUE (key_name, namespace, version_no)
);

CREATE TABLE IF NOT EXISTS app_common.locale_translation (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  code text NOT NULL,
  version_no integer NOT NULL DEFAULT 1 CHECK (version_no > 0),
  review_status app_common.review_status NOT NULL DEFAULT 'reviewed',
  is_active boolean NOT NULL DEFAULT true,
  sort_order integer NOT NULL DEFAULT 1000,
  locale_key_id uuid NOT NULL REFERENCES app_common.locale_key(id),
  locale_code text NOT NULL,
  translation_value text NOT NULL,
  effective_from timestamptz NULL,
  effective_to timestamptz NULL,
  reviewed_at timestamptz NULL,
  reviewed_by text NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  UNIQUE (code, version_no),
  UNIQUE (locale_key_id, locale_code, version_no)
);

CREATE TABLE IF NOT EXISTS app_common.copy_template (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  code text NOT NULL,
  version_no integer NOT NULL DEFAULT 1 CHECK (version_no > 0),
  review_status app_common.review_status NOT NULL DEFAULT 'reviewed',
  is_active boolean NOT NULL DEFAULT true,
  sort_order integer NOT NULL DEFAULT 1000,
  template_name text NOT NULL,
  template_type text NOT NULL DEFAULT 'copy',
  locale_code text NOT NULL DEFAULT 'ja-JP',
  target_scope_type text NOT NULL DEFAULT 'global',
  target_scope_code text NOT NULL DEFAULT 'all',
  template_body text NOT NULL DEFAULT '',
  definition_json jsonb NOT NULL DEFAULT '{}'::jsonb,
  effective_from timestamptz NULL,
  effective_to timestamptz NULL,
  reviewed_at timestamptz NULL,
  reviewed_by text NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  UNIQUE (code, version_no)
);

-- ============================================================
-- 4. SCREEN / FORM / LIST
-- ============================================================

CREATE TABLE IF NOT EXISTS app_common.screen_template (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  code text NOT NULL,
  version_no integer NOT NULL DEFAULT 1 CHECK (version_no > 0),
  review_status app_common.review_status NOT NULL DEFAULT 'reviewed',
  is_active boolean NOT NULL DEFAULT true,
  sort_order integer NOT NULL DEFAULT 1000,
  screen_type text NOT NULL,
  layout_type text NOT NULL DEFAULT '',
  platform_code text NOT NULL DEFAULT 'all',
  surface_code text NOT NULL DEFAULT 'default',
  definition_json jsonb NOT NULL DEFAULT '{}'::jsonb,
  effective_from timestamptz NULL,
  effective_to timestamptz NULL,
  reviewed_at timestamptz NULL,
  reviewed_by text NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  UNIQUE (code, version_no)
);

CREATE TABLE IF NOT EXISTS app_common.form_definition_metadata (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  code text NOT NULL,
  version_no integer NOT NULL DEFAULT 1 CHECK (version_no > 0),
  review_status app_common.review_status NOT NULL DEFAULT 'reviewed',
  is_active boolean NOT NULL DEFAULT true,
  sort_order integer NOT NULL DEFAULT 1000,
  form_name text NOT NULL,
  form_type text NOT NULL DEFAULT 'default',
  target_scope_type text NOT NULL DEFAULT 'global',
  target_scope_code text NOT NULL DEFAULT 'all',
  definition_json jsonb NOT NULL DEFAULT '{}'::jsonb,
  effective_from timestamptz NULL,
  effective_to timestamptz NULL,
  reviewed_at timestamptz NULL,
  reviewed_by text NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  UNIQUE (code, version_no)
);

CREATE TABLE IF NOT EXISTS app_common.field_group_template (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  code text NOT NULL,
  version_no integer NOT NULL DEFAULT 1 CHECK (version_no > 0),
  review_status app_common.review_status NOT NULL DEFAULT 'reviewed',
  is_active boolean NOT NULL DEFAULT true,
  sort_order integer NOT NULL DEFAULT 1000,
  form_id uuid NULL REFERENCES app_common.form_definition_metadata(id),
  group_name text NOT NULL,
  definition_json jsonb NOT NULL DEFAULT '{}'::jsonb,
  effective_from timestamptz NULL,
  effective_to timestamptz NULL,
  reviewed_at timestamptz NULL,
  reviewed_by text NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  UNIQUE (code, version_no)
);

CREATE TABLE IF NOT EXISTS app_common.form_section_template (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  code text NOT NULL,
  version_no integer NOT NULL DEFAULT 1 CHECK (version_no > 0),
  review_status app_common.review_status NOT NULL DEFAULT 'reviewed',
  is_active boolean NOT NULL DEFAULT true,
  sort_order integer NOT NULL DEFAULT 1000,
  form_id uuid NULL REFERENCES app_common.form_definition_metadata(id),
  section_name text NOT NULL,
  definition_json jsonb NOT NULL DEFAULT '{}'::jsonb,
  effective_from timestamptz NULL,
  effective_to timestamptz NULL,
  reviewed_at timestamptz NULL,
  reviewed_by text NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  UNIQUE (code, version_no)
);

CREATE TABLE IF NOT EXISTS app_common.table_column_template (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  code text NOT NULL,
  version_no integer NOT NULL DEFAULT 1 CHECK (version_no > 0),
  review_status app_common.review_status NOT NULL DEFAULT 'reviewed',
  is_active boolean NOT NULL DEFAULT true,
  sort_order integer NOT NULL DEFAULT 1000,
  template_name text NOT NULL,
  column_key text NOT NULL,
  display_label_key text NOT NULL DEFAULT '',
  definition_json jsonb NOT NULL DEFAULT '{}'::jsonb,
  effective_from timestamptz NULL,
  effective_to timestamptz NULL,
  reviewed_at timestamptz NULL,
  reviewed_by text NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  UNIQUE (code, version_no)
);

CREATE TABLE IF NOT EXISTS app_common.filter_option_template (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  code text NOT NULL,
  version_no integer NOT NULL DEFAULT 1 CHECK (version_no > 0),
  review_status app_common.review_status NOT NULL DEFAULT 'reviewed',
  is_active boolean NOT NULL DEFAULT true,
  sort_order integer NOT NULL DEFAULT 1000,
  filter_name text NOT NULL,
  definition_json jsonb NOT NULL DEFAULT '{}'::jsonb,
  effective_from timestamptz NULL,
  effective_to timestamptz NULL,
  reviewed_at timestamptz NULL,
  reviewed_by text NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  UNIQUE (code, version_no)
);

CREATE TABLE IF NOT EXISTS app_common.sort_option_template (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  code text NOT NULL,
  version_no integer NOT NULL DEFAULT 1 CHECK (version_no > 0),
  review_status app_common.review_status NOT NULL DEFAULT 'reviewed',
  is_active boolean NOT NULL DEFAULT true,
  sort_order integer NOT NULL DEFAULT 1000,
  sort_name text NOT NULL,
  definition_json jsonb NOT NULL DEFAULT '{}'::jsonb,
  effective_from timestamptz NULL,
  effective_to timestamptz NULL,
  reviewed_at timestamptz NULL,
  reviewed_by text NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  UNIQUE (code, version_no)
);

-- ============================================================
-- 5. OFFLINE / QUEUE / SYNC
-- ============================================================

CREATE TABLE IF NOT EXISTS app_common.sync_policy (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  code text NOT NULL,
  version_no integer NOT NULL DEFAULT 1 CHECK (version_no > 0),
  review_status app_common.review_status NOT NULL DEFAULT 'reviewed',
  is_active boolean NOT NULL DEFAULT true,
  sort_order integer NOT NULL DEFAULT 1000,
  policy_name text NOT NULL,
  platform_code text NOT NULL DEFAULT 'all',
  surface_code text NOT NULL DEFAULT 'default',
  definition_json jsonb NOT NULL DEFAULT '{}'::jsonb,
  effective_from timestamptz NULL,
  effective_to timestamptz NULL,
  reviewed_at timestamptz NULL,
  reviewed_by text NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  UNIQUE (code, version_no)
);

CREATE TABLE IF NOT EXISTS app_common.retry_policy (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  code text NOT NULL,
  version_no integer NOT NULL DEFAULT 1 CHECK (version_no > 0),
  review_status app_common.review_status NOT NULL DEFAULT 'reviewed',
  is_active boolean NOT NULL DEFAULT true,
  sort_order integer NOT NULL DEFAULT 1000,
  policy_name text NOT NULL,
  backoff_type text NOT NULL DEFAULT 'exponential',
  definition_json jsonb NOT NULL DEFAULT '{}'::jsonb,
  effective_from timestamptz NULL,
  effective_to timestamptz NULL,
  reviewed_at timestamptz NULL,
  reviewed_by text NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  UNIQUE (code, version_no)
);

CREATE TABLE IF NOT EXISTS app_common.queue_visual_rule (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  code text NOT NULL,
  version_no integer NOT NULL DEFAULT 1 CHECK (version_no > 0),
  review_status app_common.review_status NOT NULL DEFAULT 'reviewed',
  is_active boolean NOT NULL DEFAULT true,
  sort_order integer NOT NULL DEFAULT 1000,
  queue_state app_common.queue_state NOT NULL,
  display_rule_json jsonb NOT NULL DEFAULT '{}'::jsonb,
  effective_from timestamptz NULL,
  effective_to timestamptz NULL,
  reviewed_at timestamptz NULL,
  reviewed_by text NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  UNIQUE (code, version_no),
  UNIQUE (queue_state, version_no)
);

CREATE TABLE IF NOT EXISTS app_common.sync_trigger_policy (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  code text NOT NULL,
  version_no integer NOT NULL DEFAULT 1 CHECK (version_no > 0),
  review_status app_common.review_status NOT NULL DEFAULT 'reviewed',
  is_active boolean NOT NULL DEFAULT true,
  sort_order integer NOT NULL DEFAULT 1000,
  trigger_name text NOT NULL,
  definition_json jsonb NOT NULL DEFAULT '{}'::jsonb,
  effective_from timestamptz NULL,
  effective_to timestamptz NULL,
  reviewed_at timestamptz NULL,
  reviewed_by text NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  UNIQUE (code, version_no)
);

CREATE TABLE IF NOT EXISTS app_common.local_draft_policy (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  code text NOT NULL,
  version_no integer NOT NULL DEFAULT 1 CHECK (version_no > 0),
  review_status app_common.review_status NOT NULL DEFAULT 'reviewed',
  is_active boolean NOT NULL DEFAULT true,
  sort_order integer NOT NULL DEFAULT 1000,
  policy_name text NOT NULL,
  definition_json jsonb NOT NULL DEFAULT '{}'::jsonb,
  effective_from timestamptz NULL,
  effective_to timestamptz NULL,
  reviewed_at timestamptz NULL,
  reviewed_by text NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  UNIQUE (code, version_no)
);

CREATE TABLE IF NOT EXISTS app_common.queue_state_presentation_rule (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  code text NOT NULL,
  version_no integer NOT NULL DEFAULT 1 CHECK (version_no > 0),
  review_status app_common.review_status NOT NULL DEFAULT 'reviewed',
  is_active boolean NOT NULL DEFAULT true,
  sort_order integer NOT NULL DEFAULT 1000,
  queue_state app_common.queue_state NOT NULL,
  display_label_key text NOT NULL DEFAULT '',
  display_rule_json jsonb NOT NULL DEFAULT '{}'::jsonb,
  effective_from timestamptz NULL,
  effective_to timestamptz NULL,
  reviewed_at timestamptz NULL,
  reviewed_by text NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  UNIQUE (code, version_no),
  UNIQUE (queue_state, version_no)
);

-- ============================================================
-- 6. ERROR / ATTACHMENT
-- ============================================================

CREATE TABLE IF NOT EXISTS app_common.error_presentation_rule (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  code text NOT NULL,
  version_no integer NOT NULL DEFAULT 1 CHECK (version_no > 0),
  review_status app_common.review_status NOT NULL DEFAULT 'reviewed',
  is_active boolean NOT NULL DEFAULT true,
  sort_order integer NOT NULL DEFAULT 1000,
  error_category text NOT NULL,
  severity text NOT NULL DEFAULT 'error',
  display_rule_json jsonb NOT NULL DEFAULT '{}'::jsonb,
  effective_from timestamptz NULL,
  effective_to timestamptz NULL,
  reviewed_at timestamptz NULL,
  reviewed_by text NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  UNIQUE (code, version_no)
);

CREATE TABLE IF NOT EXISTS app_common.attachment_policy (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  code text NOT NULL,
  version_no integer NOT NULL DEFAULT 1 CHECK (version_no > 0),
  review_status app_common.review_status NOT NULL DEFAULT 'reviewed',
  is_active boolean NOT NULL DEFAULT true,
  sort_order integer NOT NULL DEFAULT 1000,
  policy_name text NOT NULL,
  platform_code text NOT NULL DEFAULT 'all',
  surface_code text NOT NULL DEFAULT 'default',
  definition_json jsonb NOT NULL DEFAULT '{}'::jsonb,
  effective_from timestamptz NULL,
  effective_to timestamptz NULL,
  reviewed_at timestamptz NULL,
  reviewed_by text NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  UNIQUE (code, version_no)
);

-- ============================================================
-- 7. VERIFY / CAPABILITY
-- ============================================================

CREATE TABLE IF NOT EXISTS app_common.verify_template (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  code text NOT NULL,
  version_no integer NOT NULL DEFAULT 1 CHECK (version_no > 0),
  review_status app_common.review_status NOT NULL DEFAULT 'reviewed',
  is_active boolean NOT NULL DEFAULT true,
  sort_order integer NOT NULL DEFAULT 1000,
  verify_type text NOT NULL,
  template_body text NOT NULL DEFAULT '',
  definition_json jsonb NOT NULL DEFAULT '{}'::jsonb,
  effective_from timestamptz NULL,
  effective_to timestamptz NULL,
  reviewed_at timestamptz NULL,
  reviewed_by text NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  UNIQUE (code, version_no)
);

CREATE TABLE IF NOT EXISTS app_common.smoke_test_template (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  code text NOT NULL,
  version_no integer NOT NULL DEFAULT 1 CHECK (version_no > 0),
  review_status app_common.review_status NOT NULL DEFAULT 'reviewed',
  is_active boolean NOT NULL DEFAULT true,
  sort_order integer NOT NULL DEFAULT 1000,
  smoke_test_name text NOT NULL,
  template_body text NOT NULL DEFAULT '',
  definition_json jsonb NOT NULL DEFAULT '{}'::jsonb,
  effective_from timestamptz NULL,
  effective_to timestamptz NULL,
  reviewed_at timestamptz NULL,
  reviewed_by text NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  UNIQUE (code, version_no)
);

CREATE TABLE IF NOT EXISTS app_common.release_gate_template (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  code text NOT NULL,
  version_no integer NOT NULL DEFAULT 1 CHECK (version_no > 0),
  review_status app_common.review_status NOT NULL DEFAULT 'reviewed',
  is_active boolean NOT NULL DEFAULT true,
  sort_order integer NOT NULL DEFAULT 1000,
  gate_name text NOT NULL,
  template_body text NOT NULL DEFAULT '',
  definition_json jsonb NOT NULL DEFAULT '{}'::jsonb,
  effective_from timestamptz NULL,
  effective_to timestamptz NULL,
  reviewed_at timestamptz NULL,
  reviewed_by text NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  UNIQUE (code, version_no)
);

CREATE TABLE IF NOT EXISTS app_common.client_capability_registry (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  code text NOT NULL,
  version_no integer NOT NULL DEFAULT 1 CHECK (version_no > 0),
  review_status app_common.review_status NOT NULL DEFAULT 'reviewed',
  is_active boolean NOT NULL DEFAULT true,
  sort_order integer NOT NULL DEFAULT 1000,
  platform_code text NOT NULL,
  capability_name text NOT NULL,
  definition_json jsonb NOT NULL DEFAULT '{}'::jsonb,
  effective_from timestamptz NULL,
  effective_to timestamptz NULL,
  reviewed_at timestamptz NULL,
  reviewed_by text NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  UNIQUE (code, version_no),
  UNIQUE (platform_code, capability_name, version_no)
);

-- ============================================================
-- 8. COMPONENT STATUS / ORIGIN
-- ============================================================

CREATE TABLE IF NOT EXISTS app_common.component_status_registry (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  code text NOT NULL,
  version_no integer NOT NULL DEFAULT 1 CHECK (version_no > 0),
  review_status app_common.review_status NOT NULL DEFAULT 'reviewed',
  is_active boolean NOT NULL DEFAULT true,
  sort_order integer NOT NULL DEFAULT 1000,
  component_id uuid NOT NULL REFERENCES app_common.component_catalog(id),
  canonical_status app_common.canonical_status NOT NULL,
  status_reason text NOT NULL DEFAULT '',
  next_action_note text NOT NULL DEFAULT '',
  effective_from timestamptz NULL,
  effective_to timestamptz NULL,
  reviewed_at timestamptz NULL,
  reviewed_by text NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  UNIQUE (code, version_no),
  UNIQUE (component_id, version_no)
);

CREATE TABLE IF NOT EXISTS app_common.component_origin_reference (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  code text NOT NULL,
  version_no integer NOT NULL DEFAULT 1 CHECK (version_no > 0),
  review_status app_common.review_status NOT NULL DEFAULT 'reviewed',
  is_active boolean NOT NULL DEFAULT true,
  sort_order integer NOT NULL DEFAULT 1000,
  component_id uuid NOT NULL REFERENCES app_common.component_catalog(id),
  origin_system_code text NOT NULL,
  origin_area_path text NOT NULL DEFAULT '',
  origin_document_name text NOT NULL DEFAULT '',
  origin_family_name text NOT NULL DEFAULT '',
  evidence_strength app_common.evidence_strength NOT NULL DEFAULT 'moderate',
  second_consumer_present boolean NOT NULL DEFAULT false,
  notes text NOT NULL DEFAULT '',
  effective_from timestamptz NULL,
  effective_to timestamptz NULL,
  reviewed_at timestamptz NULL,
  reviewed_by text NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  UNIQUE (code, version_no)
);

-- ============================================================
-- 9. STRATEGIC INDEXES
-- ============================================================

CREATE INDEX IF NOT EXISTS idx_app_common_component_catalog_class
  ON app_common.component_catalog (component_class, component_layer);

CREATE INDEX IF NOT EXISTS idx_app_common_component_status_registry_status
  ON app_common.component_status_registry (canonical_status);

CREATE INDEX IF NOT EXISTS idx_app_common_locale_translation_locale
  ON app_common.locale_translation (locale_code);

CREATE INDEX IF NOT EXISTS idx_app_common_queue_state_presentation_rule_state
  ON app_common.queue_state_presentation_rule (queue_state);

CREATE INDEX IF NOT EXISTS idx_app_common_design_token_value_token_name
  ON app_common.design_token_value (token_name);

CREATE INDEX IF NOT EXISTS idx_app_common_component_origin_reference_origin_system
  ON app_common.component_origin_reference (origin_system_code, evidence_strength);

-- ============================================================
-- 10. UPDATED_AT TRIGGERS
-- ============================================================

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
    IF NOT EXISTS (
      SELECT 1
        FROM pg_trigger
       WHERE tgname = 'trg_' || tbl || '_updated_at'
    ) THEN
      EXECUTE format(
        'CREATE TRIGGER %I BEFORE UPDATE ON app_common.%I FOR EACH ROW EXECUTE FUNCTION app_common.touch_updated_at()',
        'trg_' || tbl || '_updated_at',
        tbl
      );
    END IF;
  END LOOP;
END
$$;

-- ============================================================
-- END
-- ============================================================
