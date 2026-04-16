# ============================================================
# DB PHYSICAL SCHEMA RULES AND SETTINGS TABLES
# ============================================================

status: canonical-draft
layer: model
application: App Development Studio

tables:

rule_profile:
  purpose: named rule profile
  pk: rule_profile_id
  columns:
    - rule_profile_id: uuid not null pk
    - profile_name: text not null
    - profile_scope: text not null
    - profile_description: text null
    - active_version_id: uuid null
    - is_default: boolean not null
    - status: text not null
    - created_by: text not null
    - created_at: timestamptz not null
    - updated_at: timestamptz not null
  indexes:
    - profile_scope
    - is_default
    - status

rule_profile_version:
  purpose: versioned rule bundle
  pk: rule_profile_version_id
  columns:
    - rule_profile_version_id: uuid not null pk
    - rule_profile_id: uuid not null fk rule_profile.rule_profile_id
    - version_no: text not null
    - effective_from: timestamptz null
    - status: text not null
    - created_at: timestamptz not null
    - updated_at: timestamptz not null
  indexes:
    - rule_profile_id
    - version_no
  uniques:
    - rule_profile_id + version_no

language_profile:
  purpose: UI and artifact language settings
  pk: language_profile_id
  columns:
    - language_profile_id: uuid not null pk
    - profile_name: text not null
    - ui_language: text not null
    - input_assist_language: text not null
    - design_output_language: text not null
    - test_output_language: text not null
    - bug_output_language: text not null
    - review_output_language: text not null
    - release_output_language: text not null
    - fallback_language: text not null
    - status: text not null
    - created_at: timestamptz not null
    - updated_at: timestamptz not null
  indexes:
    - profile_name
    - status

build_policy:
  purpose: build behavior control
  pk: build_policy_id
  columns:
    - build_policy_id: uuid not null pk
    - policy_name: text not null
    - build_mode: text not null
    - target_scope: text not null
    - precheck_enabled: boolean not null
    - failure_policy: text not null
    - artifact_retention: text null
    - external_build_note: text null
    - status: text not null
    - created_at: timestamptz not null
    - updated_at: timestamptz not null
  indexes:
    - policy_name
    - build_mode
