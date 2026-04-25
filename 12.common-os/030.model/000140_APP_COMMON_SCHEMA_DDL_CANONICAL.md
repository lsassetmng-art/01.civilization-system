# ============================================================
# APP_COMMON SCHEMA DDL CANONICAL
# ============================================================

status: canonical
layer: application-common-components
schema_name: app_common
owner: Boss
prepared_by: Zero

# ============================================================
# 0. PURPOSE
# ============================================================

This document fixes the canonical DDL design direction for the shared schema `app_common`.

`app_common` is not an OS.
`app_common` is not a domain transaction schema.
`app_common` stores shared mutable metadata used by multiple OSs, apps, ERP surfaces,
and shared HTML UI runtime layers.

# ============================================================
# 1. OFFICIAL ROLE
# ============================================================

official_role:
- shared design token metadata storage
- shared component catalog metadata storage
- shared locale and copy metadata storage
- shared screen template metadata storage
- shared offline/sync/retry presentation policy metadata storage
- shared accessibility preset metadata storage
- shared attachment policy metadata storage
- shared client capability metadata storage

not_allowed_as_primary_use:
- business transaction canon
- ERP accounting canon
- life personal canon
- persona mutable canon
- AI prompt canon
- secrets storage
- entitlement decision core
- pricing decision core
- access decision core

# ============================================================
# 2. DESIGN PRINCIPLES
# ============================================================

design_principles:
- additive only
- metadata-first
- no business transaction ownership
- no secrets
- no client-side confidential logic
- stable identifiers
- soft versioning support
- locale-aware
- theme-aware
- variant-aware
- audit-friendly timestamps
- future-proof for cross-OS reuse

# ============================================================
# 3. BASE TABLE GROUPS
# ============================================================

base_table_groups:
- theme and design token
- component catalog and variants
- locale and copy catalog
- template catalog
- sync / retry / queue visual policy
- accessibility preset
- attachment policy
- client capability registry

# ============================================================
# 4. RECOMMENDED TABLE SET
# ============================================================

recommended_tables:

theme_and_token:
- app_common.theme_registry
- app_common.design_token_set
- app_common.design_token_value

component_catalog:
- app_common.component_catalog
- app_common.component_variant_catalog
- app_common.component_slot_rule

locale_and_copy:
- app_common.locale_key
- app_common.locale_translation
- app_common.copy_template

template_catalog:
- app_common.screen_template
- app_common.form_definition_metadata
- app_common.notification_template
- app_common.export_template
- app_common.help_template

sync_and_queue:
- app_common.sync_policy
- app_common.retry_policy
- app_common.queue_visual_rule
- app_common.feature_presentation_rule

platform_and_accessibility:
- app_common.accessibility_preset
- app_common.attachment_policy
- app_common.client_capability_registry

# ============================================================
# 5. RECOMMENDED COMMON COLUMNS
# ============================================================

recommended_common_columns:
- id uuid primary key
- code text unique not null
- name text not null
- description text null
- is_active boolean not null default true
- sort_order integer not null default 1000
- created_at timestamptz not null default now()
- updated_at timestamptz not null default now()
- version_no integer not null default 1

recommended_optional_columns:
- owner_scope text null
- applies_to_os text[] null
- applies_to_app text[] null
- locale_code text null
- theme_code text null
- variant_code text null
- metadata jsonb not null default '{}'::jsonb

# ============================================================
# 6. RECOMMENDED TABLE DETAILS
# ============================================================

## 6.1 theme_registry
purpose:
Stores shared theme identities such as default, dark, high-contrast, ERP-dense.

recommended_columns:
- id
- code
- name
- description
- is_active
- sort_order
- metadata
- created_at
- updated_at

## 6.2 design_token_set
purpose:
Stores a versioned group of design tokens for a theme or variant family.

recommended_columns:
- id
- code
- theme_code
- name
- description
- version_no
- is_active
- metadata
- created_at
- updated_at

recommended_constraints:
- unique(code, version_no)

## 6.3 design_token_value
purpose:
Stores token key/value pairs such as spacing.md or color.primary.bg.

recommended_columns:
- id
- token_set_code
- token_key
- token_value_text
- token_value_type
- locale_code
- metadata
- created_at
- updated_at

recommended_constraints:
- unique(token_set_code, token_key, coalesce(locale_code, ''))

## 6.4 component_catalog
purpose:
Stores canonical shared component identities.

recommended_columns:
- id
- code
- name
- description
- category_code
- is_active
- sort_order
- metadata
- created_at
- updated_at

examples:
- button
- text_field
- card
- sync_status_panel

## 6.5 component_variant_catalog
purpose:
Stores canonical variants per component.

recommended_columns:
- id
- component_code
- variant_code
- name
- description
- theme_code
- is_active
- sort_order
- metadata
- created_at
- updated_at

recommended_constraints:
- unique(component_code, variant_code, coalesce(theme_code, ''))

examples:
- button / primary
- button / destructive
- text_field / erp_dense

## 6.6 component_slot_rule
purpose:
Stores metadata describing structured regions or slots within a component.

recommended_columns:
- id
- component_code
- variant_code
- slot_code
- rule_type
- rule_value
- metadata
- created_at
- updated_at

## 6.7 locale_key
purpose:
Stores canonical message keys.

recommended_columns:
- id
- key_code
- domain_code
- description
- is_active
- metadata
- created_at
- updated_at

recommended_constraints:
- unique(key_code)

## 6.8 locale_translation
purpose:
Stores translated values per locale key.

recommended_columns:
- id
- key_code
- locale_code
- text_value
- is_active
- metadata
- created_at
- updated_at

recommended_constraints:
- unique(key_code, locale_code)

## 6.9 copy_template
purpose:
Stores reusable shared copy fragments.

recommended_columns:
- id
- code
- locale_code
- title_text
- body_text
- tone_code
- metadata
- created_at
- updated_at

## 6.10 screen_template
purpose:
Stores metadata for reusable screen templates.

recommended_columns:
- id
- code
- name
- template_type
- layout_code
- metadata
- is_active
- created_at
- updated_at

examples:
- list_standard
- detail_standard
- approval_workspace
- offline_sync_center

## 6.11 form_definition_metadata
purpose:
Stores shared form presentation metadata, not domain submission canon.

recommended_columns:
- id
- code
- name
- schema_ref
- metadata
- is_active
- created_at
- updated_at

## 6.12 notification_template
purpose:
Stores shared notification presentation templates.

recommended_columns:
- id
- code
- locale_code
- title_template
- body_template
- channel_hint
- metadata
- created_at
- updated_at

## 6.13 export_template
purpose:
Stores shared export presentation templates for CSV/PDF/UI-driven export shapes.

recommended_columns:
- id
- code
- format_code
- name
- metadata
- is_active
- created_at
- updated_at

## 6.14 help_template
purpose:
Stores shared help and explanation templates.

recommended_columns:
- id
- code
- locale_code
- title_text
- body_text
- metadata
- created_at
- updated_at

## 6.15 sync_policy
purpose:
Stores shared sync policy metadata for offline-first behavior.

recommended_columns:
- id
- code
- trigger_on_launch boolean
- trigger_on_resume boolean
- trigger_on_online boolean
- manual_sync_allowed boolean
- metadata
- is_active
- created_at
- updated_at

## 6.16 retry_policy
purpose:
Stores retry interval and backoff presentation policy metadata.

recommended_columns:
- id
- code
- retry_strategy_code
- max_retry_count integer
- metadata
- is_active
- created_at
- updated_at

## 6.17 queue_visual_rule
purpose:
Stores how queue states should be presented.

recommended_columns:
- id
- code
- queue_state_code
- badge_style_code
- severity_code
- metadata
- is_active
- created_at
- updated_at

## 6.18 feature_presentation_rule
purpose:
Stores shared feature display rules, not final entitlement decision logic.

recommended_columns:
- id
- code
- feature_code
- visible_when_code
- presentation_hint
- metadata
- is_active
- created_at
- updated_at

## 6.19 accessibility_preset
purpose:
Stores reusable accessibility presentation presets.

recommended_columns:
- id
- code
- name
- description
- metadata
- is_active
- created_at
- updated_at

## 6.20 attachment_policy
purpose:
Stores shared attachment presentation policies.

recommended_columns:
- id
- code
- max_file_count integer
- max_file_size_bytes bigint
- allowed_extension_list text[]
- metadata
- is_active
- created_at
- updated_at

## 6.21 client_capability_registry
purpose:
Stores client environment capability metadata for shared UI branching.

recommended_columns:
- id
- code
- capability_key
- capability_value_text
- platform_group_code
- metadata
- is_active
- created_at
- updated_at

# ============================================================
# 7. RECOMMENDED INDEXING DIRECTION
# ============================================================

recommended_indexes:
- unique indexes on stable codes
- indexes on is_active
- indexes on theme_code
- indexes on locale_code
- indexes on component_code
- indexes on variant_code
- indexes on sort_order
- GIN index on metadata where justified

# ============================================================
# 8. RECOMMENDED UPDATE RULE
# ============================================================

recommended_update_rule:
- do not hard-delete canonical shared rows unless explicitly retired by governance
- prefer is_active=false for retirement
- use version_no when semantic compatibility matters
- keep code stable once published
- separate presentation metadata changes from domain logic changes

# ============================================================
# 9. EXCLUDED FROM THIS DDL CANON
# ============================================================

excluded:
- actual app outbox data tables
- ERP journal or voucher tables
- domain transaction payload canon
- auth/session internals
- pricing / entitlement engines
- AI orchestration internals
- confidential policy expression engines

# ============================================================
# 10. FINAL STATEMENT
# ============================================================

final_statement:
`app_common` is officially approved as the shared mutable metadata schema for the shared UI foundation.
It must remain presentation-oriented and metadata-oriented.
Each domain continues to own its business canon separately.
