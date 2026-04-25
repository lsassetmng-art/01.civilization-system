# COMMON OS MODEL INTEGRATED

status: canonical
system: CommonOS
layer: model
generated_at: 2026-04-21T20:52:27+0900
source_root: /data/data/com.termux/files/home/01.civilization-system/12.common-os/030.model

## Integration scope
This integrated file combines current model-layer canon, DDL assets, RLS drafts, and execution-ready migration bundle assets.


<!-- ============================================================ -->
<!-- SOURCE: /data/data/com.termux/files/home/01.civilization-system/12.common-os/030.model/000000_COMMON_OS_MODEL_INDEX.md -->
<!-- ============================================================ -->

# COMMON OS MODEL INDEX

status: canonical
layer: model

## Documents
- 000000_COMMON_OS_MODEL_INDEX.md
- 000001_COMMON_OS_MODEL_OVERVIEW.md
- 000010_APP_COMMON_SCHEMA_DDL_CANONICAL.md
- 000020_APP_COMMON_METADATA_MODEL_CANONICAL.md
- 000030_SHARED_COMPONENT_VARIANT_MODEL_CANONICAL.md
- 000040_SHARED_TOKEN_AND_THEME_MODEL_CANONICAL.md
- 000050_SHARED_LOCALE_TEMPLATE_MODEL_CANONICAL.md

## Application common component model subsystem

### Canonical model reading path
1. 000060_APPLICATION_COMMON_COMPONENT_CATALOG_MODEL_CANONICAL.md
2. 000070_APPLICATION_COMMON_COMPONENT_VARIANT_CATALOG_MODEL_CANONICAL.md
3. 000080_APPLICATION_COMMON_COMPONENT_STATUS_MODEL_CANONICAL.md
4. 000090_APPLICATION_COMMON_COMPONENT_ORIGIN_EVIDENCE_MODEL_CANONICAL.md

### Notes
These model documents formalize how CommonOS stores and reasons about common component families, variants, promotion status, and origin evidence in app_common-aligned metadata terms.

## app_common reviewed canonical DDL subsystem

### Canonical DDL reading path
1. 000100_APP_COMMON_REVIEWED_CANONICAL_DDL_TIER1.sql
2. 000101_APP_COMMON_REVIEWED_CANONICAL_DDL_TIER1_NOTES.md
3. 000102_APP_COMMON_REVIEWED_CANONICAL_DDL_TIER2_TIER3_PLAN.md

### Notes
These files define the first reviewed canonical DDL wave for app_common as shared mutable metadata only. They do not introduce domain business truth.

## app_common RLS and published-read SQL draft subsystem

### Canonical SQL draft reading path
1. 000103_APP_COMMON_RLS_SQL_DRAFT_TIER1.sql
2. 000104_APP_COMMON_PUBLISHED_READ_VIEW_SQL_DRAFT_TIER1.sql
3. 000105_APP_COMMON_RLS_SQL_DRAFT_TIER1_NOTES.md
4. 000106_APP_COMMON_ROLE_MAPPING_DRAFT.md

### Notes
These files describe the first actual SQL draft for protecting app_common base tables and exposing only published metadata through controlled read views.

## app_common execution-ready migration bundle subsystem

### Canonical reading path
1. 000107_APP_COMMON_SUPABASE_EXECUTION_READY_MIGRATION_BUNDLE_TIER1.sql
2. 000108_APP_COMMON_SUPABASE_EXECUTION_READY_MIGRATION_BUNDLE_NOTES.md

### Notes
These files define the first execution-ready bundle format for app_common Tier1 metadata migrations under Supabase/PostgreSQL assumptions.



<!-- ============================================================ -->
<!-- SOURCE: /data/data/com.termux/files/home/01.civilization-system/12.common-os/030.model/000001_COMMON_OS_MODEL_OVERVIEW.md -->
<!-- ============================================================ -->

# COMMON OS MODEL OVERVIEW

status: canonical
layer: model

## Purpose
This layer defines the metadata model and schema direction for CommonOS.

## Topics
- app_common schema direction
- metadata identity and versioning
- component variants
- token and theme model
- locale and template model

## Application common component model subsystem overview

### Position
The architecture layer defines what the application common component families are. The model layer defines how their metadata is represented canonically.

### Scope
- component family identity
- catalog structure
- variant structure
- promotion and lifecycle status
- origin evidence and reflection references

### Boundary
These are metadata models only. They do not store domain business truth, secrets, pricing logic, entitlement logic, access logic, or authoritative domain outbox truth.

## app_common reviewed canonical DDL subsystem overview

### Position
The architecture layer defines what CommonOS may own. The model layer defines how app_common metadata is represented. The reviewed canonical DDL subsystem provides the first formal PostgreSQL DDL for Tier1 app_common metadata tables.

### Scope
- shared mutable metadata only
- reviewed canonical table candidates
- common columns, enums, and foreign keys
- Tier2 / Tier3 rollout plan

### Boundary
The DDL excludes domain business canon, pricing logic, entitlement logic, access logic, secrets, ERP voucher truth, domain outbox truth, and other authoritative domain data.

## app_common RLS and published-read SQL draft subsystem overview

### Position
The model layer now includes actual SQL draft assets for app_common protection and publication patterns.

### Scope
- base-table RLS posture
- internal reviewer / publisher role handling
- public published-read views
- role mapping draft
- execution caveats for real DB adoption

### Boundary
These SQL drafts are canonical design assets. They are not the same thing as approved production execution.

## app_common execution-ready migration bundle subsystem overview

### Position
The model layer now includes a bundle-level SQL draft that sequences Tier1 DDL, RLS draft, and published read-view draft in one migration package.

### Scope
- ordered migration bundle
- prerequisite file chaining
- execution caveats
- design-level execution readiness



<!-- ============================================================ -->
<!-- SOURCE: /data/data/com.termux/files/home/01.civilization-system/12.common-os/030.model/000010_APP_COMMON_SCHEMA_DDL_CANONICAL.md -->
<!-- ============================================================ -->

# APP_COMMON SCHEMA DDL CANONICAL

status: canonical
layer: model
schema: app_common

## Schema role
The app_common schema stores shared mutable metadata required by CommonOS.

## Canonical table groups
- theme_registry
- design_token_set
- design_token_value
- component_catalog
- component_variant_catalog
- component_slot_rule
- locale_key
- locale_translation
- copy_template
- screen_template
- form_definition_metadata
- notification_template
- export_template
- help_template
- sync_policy
- retry_policy
- queue_visual_rule
- feature_presentation_rule
- accessibility_preset
- attachment_policy
- client_capability_registry

## Common structural columns
- id
- code
- version_no
- sort_order
- is_active
- created_at
- updated_at

## Exclusion rule
No domain transaction truth, secrets, pricing logic, entitlement logic, access logic, or AI prompt canon may be stored here.



<!-- ============================================================ -->
<!-- SOURCE: /data/data/com.termux/files/home/01.civilization-system/12.common-os/030.model/000020_APP_COMMON_METADATA_MODEL_CANONICAL.md -->
<!-- ============================================================ -->

# APP_COMMON METADATA MODEL CANONICAL

status: canonical
layer: model

## Identity model
Every metadata record must support stable identity and change-safe versioning.

## Required characteristics
- stable code-based identity
- version awareness
- locale awareness where relevant
- variant awareness where relevant
- safe deactivation support
- audit-friendly timestamps

## Modeling rule
Metadata defines presentation possibilities, not authoritative business decisions.



<!-- ============================================================ -->
<!-- SOURCE: /data/data/com.termux/files/home/01.civilization-system/12.common-os/030.model/000030_SHARED_COMPONENT_VARIANT_MODEL_CANONICAL.md -->
<!-- ============================================================ -->

# SHARED COMPONENT VARIANT MODEL CANONICAL

status: canonical
layer: model

## Canonical variant examples
- button.primary
- button.secondary
- button.destructive
- button.ghost
- input.default
- input.compact
- input.erp_dense
- card.standard
- card.record
- panel.sync
- panel.conflict

## Variant rule
Variants may change presentation, density, emphasis, and state display. Variants must not encode business authority.



<!-- ============================================================ -->
<!-- SOURCE: /data/data/com.termux/files/home/01.civilization-system/12.common-os/030.model/000040_SHARED_TOKEN_AND_THEME_MODEL_CANONICAL.md -->
<!-- ============================================================ -->

# SHARED TOKEN AND THEME MODEL CANONICAL

status: canonical
layer: model

## Theme model
A theme is a named, versioned package of token values.

## Token groups
- color
- typography
- spacing
- radius
- border
- shadow
- motion
- density
- z-index guidance

## Rule
Tokens are reusable presentation primitives. They must not contain domain business meaning.



<!-- ============================================================ -->
<!-- SOURCE: /data/data/com.termux/files/home/01.civilization-system/12.common-os/030.model/000050_SHARED_LOCALE_TEMPLATE_MODEL_CANONICAL.md -->
<!-- ============================================================ -->

# SHARED LOCALE TEMPLATE MODEL CANONICAL

status: canonical
layer: model

## Locale model
- locale_key defines a translatable semantic key
- locale_translation stores localized values

## Template model
Templates may exist for:
- copy
- screen
- help
- notification
- export

## Rule
Templates standardize presentation and guidance. They do not replace domain data truth.



<!-- ============================================================ -->
<!-- SOURCE: /data/data/com.termux/files/home/01.civilization-system/12.common-os/030.model/000060_APPLICATION_COMMON_COMPONENT_CATALOG_MODEL_CANONICAL.md -->
<!-- ============================================================ -->

# APPLICATION COMMON COMPONENT CATALOG MODEL CANONICAL

status: canonical
system: CommonOS
layer: model
schema_candidate: app_common

## Purpose
This document defines the canonical metadata model for application common component families managed by CommonOS.

## Main entities
- component_catalog
- component_family_group
- component_origin_reference
- component_adoption_hint

## component_catalog role
component_catalog stores the canonical identity of a reusable component or shared base recognized by CommonOS.

## Required fields for component_catalog
- id
- component_code
- component_name
- component_class
- component_layer
- canonical_status
- canonical_owner
- description
- common_scope_note
- implementation_state
- is_active
- created_at
- updated_at

## component_class allowed values
- ui_primitive_shell
- ui_composite_feature
- presentation_utility
- non_ui_shared_base

## component_layer examples
- token
- primitive_layout
- base_control
- composite_feature
- shell_navigation
- sync_presentation
- runtime_support
- transport_contract_support

## Catalog identity rule
component_code is stable and machine-friendly.
component_name is human-readable and normalized for cross-system reuse.

## Example normalized entries
- screen_shell_common
- state_panel_common
- action_button_common
- product_card_common
- library_shelf_common
- multilingual_label_common
- multicurrency_price_display_common
- permission_guard_base
- validator_helper_set
- idempotency_service_base

## Boundary rule
The catalog stores reusable component metadata only. It does not store domain transaction truth or origin-system business canon.



<!-- ============================================================ -->
<!-- SOURCE: /data/data/com.termux/files/home/01.civilization-system/12.common-os/030.model/000070_APPLICATION_COMMON_COMPONENT_VARIANT_CATALOG_MODEL_CANONICAL.md -->
<!-- ============================================================ -->

# APPLICATION COMMON COMPONENT VARIANT CATALOG MODEL CANONICAL

status: canonical
system: CommonOS
layer: model
schema_candidate: app_common

## Purpose
This document defines the canonical metadata model for application common component variants.

## Main entities
- component_variant_catalog
- component_variant_rule
- component_slot_rule

## component_variant_catalog role
Each variant record describes a presentation difference for a known component family.

## Required fields for component_variant_catalog
- id
- component_variant_code
- component_code
- variant_name
- variant_group
- density_mode
- emphasis_mode
- state_mode
- viewport_hint
- accessibility_note
- is_default
- is_active
- created_at
- updated_at

## Variant examples
- button.primary
- button.secondary
- button.destructive
- button.ghost
- input.default
- input.compact
- input.erp_dense
- card.standard
- card.record
- panel.sync
- panel.conflict

## variant_group examples
- tone
- density
- state
- viewport
- emphasis

## Variant rule
Variants may change presentation, density, emphasis, responsiveness, or visible state treatment. Variants must not encode business authority.

## Slot-rule direction
component_slot_rule may define allowed named slots for a component family or variant, such as:
- header
- footer
- actions
- status
- body
- thumbnail



<!-- ============================================================ -->
<!-- SOURCE: /data/data/com.termux/files/home/01.civilization-system/12.common-os/030.model/000080_APPLICATION_COMMON_COMPONENT_STATUS_MODEL_CANONICAL.md -->
<!-- ============================================================ -->

# APPLICATION COMMON COMPONENT STATUS MODEL CANONICAL

status: canonical
system: CommonOS
layer: model
schema_candidate: app_common

## Purpose
This document defines the canonical lifecycle and promotion model for application common component families.

## Main entities
- component_status_registry
- component_status_history
- component_hold_reason

## Canonical statuses
- origin_discovered
- origin_reviewed
- family_normalized
- common_review_pending
- current_wave_accepted
- hold
- implementation_ready
- implemented
- adopted
- superseded
- rejected

## Required fields for component_status_registry
- id
- component_code
- canonical_status
- status_reason
- status_set_at
- status_set_by
- next_action_note
- is_current
- created_at
- updated_at

## Hold reasons examples
- layer_split_needed
- second_consumer_needed
- naming_unstable
- boundary_uncertain
- origin_specificity_too_high
- family_overlap_unresolved

## Interpretation rule
current_wave_accepted means design-canon accepted but not necessarily implemented.
implementation_ready means implementation may begin under CommonOS implementation rules.



<!-- ============================================================ -->
<!-- SOURCE: /data/data/com.termux/files/home/01.civilization-system/12.common-os/030.model/000090_APPLICATION_COMMON_COMPONENT_ORIGIN_EVIDENCE_MODEL_CANONICAL.md -->
<!-- ============================================================ -->

# APPLICATION COMMON COMPONENT ORIGIN EVIDENCE MODEL CANONICAL

status: canonical
system: CommonOS
layer: model
schema_candidate: app_common

## Purpose
This document defines how CommonOS records origin-side evidence for application common component families.

## Main entities
- component_origin_reference
- component_origin_review_reference
- component_reflection_reference

## Required fields for component_origin_reference
- id
- component_code
- origin_system_code
- origin_area_path
- origin_document_name
- origin_family_name
- evidence_strength
- second_consumer_present
- notes
- created_at
- updated_at

## evidence_strength examples
- weak
- moderate
- strong

## Origin-system examples
- staticart_os
- business_os
- life_os
- streaming_os
- erp

## Reflection rule
Origin evidence supports CommonOS review and reflection, but does not replace CommonOS canonical ownership.



<!-- ============================================================ -->
<!-- SOURCE: /data/data/com.termux/files/home/01.civilization-system/12.common-os/030.model/000100_APP_COMMON_REVIEWED_CANONICAL_DDL_TIER1.sql -->
<!-- ============================================================ -->

```sql
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

```


<!-- ============================================================ -->
<!-- SOURCE: /data/data/com.termux/files/home/01.civilization-system/12.common-os/030.model/000101_APP_COMMON_REVIEWED_CANONICAL_DDL_TIER1_NOTES.md -->
<!-- ============================================================ -->

# APP_COMMON REVIEWED CANONICAL DDL TIER1 NOTES

status: canonical
system: CommonOS
layer: model
schema: app_common

## Purpose
This document explains the intent of the first reviewed canonical DDL wave for app_common.

## Tier1 scope
Tier1 includes the first metadata tables needed to support:
- theme and token canon
- component catalog and variant metadata
- locale and copy metadata
- screen and form metadata
- search / filter / sort metadata
- offline / queue / sync metadata
- error and attachment presentation metadata
- verify and release templates
- client capability metadata
- component status and origin evidence metadata

## Explicit boundary
This DDL does not create:
- domain business truth
- ERP voucher truth
- pricing logic
- entitlement logic
- access logic
- secrets
- AI prompt canon
- domain outbox truth

## SQL design notes
- additive only
- schema name is app_common
- metadata records use code + version_no for logical uniqueness
- reviewed canonical lifecycle is represented with review_status
- component lifecycle is represented with canonical_status
- queue presentation uses queue_state enum
- origin evidence uses evidence_strength enum

## Current interpretation
This DDL is a canonical design asset under CommonOS model. It is not a declaration that the production DB target has already been chosen.



<!-- ============================================================ -->
<!-- SOURCE: /data/data/com.termux/files/home/01.civilization-system/12.common-os/030.model/000102_APP_COMMON_REVIEWED_CANONICAL_DDL_TIER2_TIER3_PLAN.md -->
<!-- ============================================================ -->

# APP_COMMON REVIEWED CANONICAL DDL TIER2 TIER3 PLAN

status: canonical
system: CommonOS
layer: model
schema: app_common

## Tier2 candidate tables
- density_preset
- layout_spacing_preset
- component_family_group
- component_usage_template
- screen_state_template
- review_correction_pattern_template
- detail_panel_template
- sync_status_field_rule
- attachment_presentation_rule
- export_job_presentation_rule
- import_job_presentation_rule
- warning_presentation_rule
- success_presentation_rule
- runtime_template_registry
- compatibility_notice_rule
- component_status_history
- component_reflection_reference

## Tier3 candidate tables
- rollout_order_template
- component_adoption_review_template
- runtime_template_registry deepening by platform
- review_correction_pattern_template deep split
- compatibility_notice_rule variant expansion
- reflection / migration metadata expansion

## Promotion principle
Tier2 and Tier3 should be added only after Tier1 stabilizes and after real adoption evidence confirms the need for additional metadata structure.



<!-- ============================================================ -->
<!-- SOURCE: /data/data/com.termux/files/home/01.civilization-system/12.common-os/030.model/000103_APP_COMMON_RLS_SQL_DRAFT_TIER1.sql -->
<!-- ============================================================ -->

```sql
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

```


<!-- ============================================================ -->
<!-- SOURCE: /data/data/com.termux/files/home/01.civilization-system/12.common-os/030.model/000104_APP_COMMON_PUBLISHED_READ_VIEW_SQL_DRAFT_TIER1.sql -->
<!-- ============================================================ -->

```sql
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

```


<!-- ============================================================ -->
<!-- SOURCE: /data/data/com.termux/files/home/01.civilization-system/12.common-os/030.model/000105_APP_COMMON_RLS_SQL_DRAFT_TIER1_NOTES.md -->
<!-- ============================================================ -->

# APP_COMMON RLS SQL DRAFT TIER1 NOTES

status: canonical
system: CommonOS
layer: model
schema: app_common

## Purpose
This document explains the intent of the first actual RLS SQL draft for app_common.

## Base-table posture
- raw base tables are not broadly readable
- RLS is enabled and forced on Tier1 tables
- public or broad client read is not assumed on raw base tables

## Role intent
- app_common_reader_internal: broad internal read
- app_common_reviewer: internal review and controlled modification
- app_common_publisher: internal publication-oriented update responsibility
- service_role: controlled server-side authority
- anon / authenticated: published-view read only when granted

## Important interpretation
This draft intentionally uses broad row-level access for reviewer / publisher roles because field-level governance should be handled in controlled service flows or internal tooling layers.

## Why published views exist
Published views provide a stable pattern:
- reviewed only
- active only
- effective-window valid only
- safe-for-client subset only

## Execution note
This is still a design draft. Before real execution, environment-specific role naming, Supabase posture, and migration sequencing must be confirmed.



<!-- ============================================================ -->
<!-- SOURCE: /data/data/com.termux/files/home/01.civilization-system/12.common-os/030.model/000106_APP_COMMON_ROLE_MAPPING_DRAFT.md -->
<!-- ============================================================ -->

# APP_COMMON ROLE MAPPING DRAFT

status: canonical
system: CommonOS
layer: model
schema: app_common

## Purpose
This document maps conceptual app_common roles to likely operational responsibilities.

## Conceptual roles

### app_common_reader_public
Meaning:
- broad client-facing read of published metadata only

Typical realization:
- anon
- authenticated
- or equivalent public-read path through published views only

### app_common_reader_internal
Meaning:
- broader internal read for admin consoles, review dashboards, or internal support tools

### app_common_reviewer
Meaning:
- review metadata before publication
- inspect draft / review_pending content
- perform controlled metadata corrections during review

### app_common_publisher
Meaning:
- set active / effective transitions
- move reviewed metadata into publish-ready operational state

### app_common_schema_admin
Meaning:
- structural DDL and migration owner
- separate from ordinary review / publish operation

### service_role
Meaning:
- trusted server-side automation
- controlled workflow execution
- migration support where appropriate

## Core boundary
Role mapping is an operational choice. CommonOS canon defines the intent and separation of duties, not one mandatory production identity provider strategy.



<!-- ============================================================ -->
<!-- SOURCE: /data/data/com.termux/files/home/01.civilization-system/12.common-os/030.model/000107_APP_COMMON_SUPABASE_EXECUTION_READY_MIGRATION_BUNDLE_TIER1.sql -->
<!-- ============================================================ -->

```sql
-- ============================================================
-- APP_COMMON SUPABASE EXECUTION READY MIGRATION BUNDLE TIER1
-- CommonOS / app_common / bundle order draft
-- ============================================================

\set ON_ERROR_STOP on

BEGIN;

\i /data/data/com.termux/files/home/01.civilization-system/12.common-os/030.model/000100_APP_COMMON_REVIEWED_CANONICAL_DDL_TIER1.sql
\i /data/data/com.termux/files/home/01.civilization-system/12.common-os/030.model/000103_APP_COMMON_RLS_SQL_DRAFT_TIER1.sql
\i /data/data/com.termux/files/home/01.civilization-system/12.common-os/030.model/000104_APP_COMMON_PUBLISHED_READ_VIEW_SQL_DRAFT_TIER1.sql

COMMIT;

```


<!-- ============================================================ -->
<!-- SOURCE: /data/data/com.termux/files/home/01.civilization-system/12.common-os/030.model/000108_APP_COMMON_SUPABASE_EXECUTION_READY_MIGRATION_BUNDLE_NOTES.md -->
<!-- ============================================================ -->

# APP_COMMON SUPABASE EXECUTION READY MIGRATION BUNDLE NOTES

status: canonical
system: CommonOS
layer: model
schema: app_common

## Purpose
This document explains the execution-ready bundle file for Tier1 app_common migration work.

## Bundle order
1. reviewed canonical Tier1 DDL
2. RLS draft and internal-role protection
3. published read views

## Why this order
- objects must exist before RLS policies can be attached
- protected base tables should exist before published views are granted
- broad read should target published views, not raw base tables

## Execution readiness meaning
Execution-ready in this context means:
- absolute paths are fixed
- SQL order is fixed
- ON_ERROR_STOP is enabled
- the bundle is designed to be run through psql

It does not mean:
- production target DB has already been chosen
- roles are guaranteed to exist in every environment
- rollout approval has already been granted

