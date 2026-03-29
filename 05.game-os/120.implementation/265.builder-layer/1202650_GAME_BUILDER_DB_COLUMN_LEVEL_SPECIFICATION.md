# ============================================================
# GAME BUILDER DB COLUMN LEVEL SPECIFICATION
# ============================================================

status: canonical
layer: 120.implementation
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the column-level database specification
for the primary Game Builder logical tables.

note:
This document is implementation-facing.
Types are logical SQL-oriented suggestions
and may be adapted to the chosen database
without violating architectural intent.


# ============================================================
# 1. BUILDER_PROJECT
# ============================================================

table_name:
builder_project

columns:
- id : bigserial primary key
- project_code : text unique not null
- workspace_code : text not null
- game_title_code : text null
- project_name : text not null
- project_summary : text null
- project_status : text not null
- runtime_family_code : text not null
- runtime_profile_code : text null
- ruleset_profile_code : text null
- template_profile_code : text null
- template_family_code : text null
- template_tier : text null
- latest_revision_ref : text null
- latest_autosave_snapshot_ref : text null
- created_by : text not null
- created_at : timestamptz not null
- updated_at : timestamptz not null

recommended_indexes:
- unique(project_code)
- index(workspace_code)
- index(game_title_code)
- index(project_status)
- index(runtime_family_code)
- index(updated_at desc)


# ============================================================
# 2. BUILDER_BLOCK
# ============================================================

table_name:
builder_block

columns:
- id : bigserial primary key
- block_id : text unique not null
- project_code : text not null
- block_type : text not null
- block_title : text not null
- parent_block_id : text null
- order_index : integer not null
- zone_classification : text not null
- block_status : text not null
- content_payload_json : jsonb not null
- validation_state_summary_json : jsonb null
- created_by : text not null
- created_at : timestamptz not null
- updated_at : timestamptz not null

recommended_indexes:
- unique(block_id)
- index(project_code)
- index(project_code, parent_block_id, order_index)
- index(block_type)
- index(zone_classification)
- gin(content_payload_json)


# ============================================================
# 3. BUILDER_REVISION
# ============================================================

table_name:
builder_revision

columns:
- id : bigserial primary key
- revision_ref : text unique not null
- project_code : text not null
- revision_number : integer not null
- revision_status : text not null
- save_summary : text null
- content_hash : text not null
- runtime_binding_summary_json : jsonb not null
- template_binding_summary_json : jsonb null
- asset_binding_summary_json : jsonb null
- validation_state_summary_json : jsonb null
- created_by : text not null
- created_at : timestamptz not null

recommended_indexes:
- unique(revision_ref)
- unique(project_code, revision_number)
- index(project_code, created_at desc)
- index(revision_status)


# ============================================================
# 4. BUILDER_AUTOSAVE_SNAPSHOT
# ============================================================

table_name:
builder_autosave_snapshot

columns:
- id : bigserial primary key
- autosave_snapshot_ref : text unique not null
- project_code : text not null
- snapshot_status : text not null
- autosave_summary : text null
- snapshot_hash : text not null
- payload_ref : text null
- created_by : text not null
- created_at : timestamptz not null

recommended_indexes:
- unique(autosave_snapshot_ref)
- index(project_code, created_at desc)
- index(snapshot_status)


# ============================================================
# 5. BUILDER_ASSET
# ============================================================

table_name:
builder_asset

columns:
- id : bigserial primary key
- asset_ref : text unique not null
- project_code : text not null
- asset_type : text not null
- asset_family : text not null
- asset_status : text not null
- usage_scope : text not null
- source_type : text not null
- asset_name : text null
- asset_hash : text null
- template_origin_summary_json : jsonb null
- variant_summary_json : jsonb null
- export_metadata_summary_json : jsonb null
- validation_state_summary_json : jsonb null
- payload_ref : text null
- parent_asset_ref : text null
- created_by : text not null
- created_at : timestamptz not null
- updated_at : timestamptz not null

recommended_indexes:
- unique(asset_ref)
- index(project_code)
- index(project_code, asset_type)
- index(project_code, asset_family)
- index(asset_status)
- index(parent_asset_ref)


# ============================================================
# 6. BUILDER_ASSET_BINDING
# ============================================================

table_name:
builder_asset_binding

columns:
- id : bigserial primary key
- binding_ref : text unique not null
- project_code : text not null
- asset_ref : text not null
- target_scope_type : text not null
- target_scope_ref : text not null
- usage_scope : text not null
- binding_status : text not null
- created_by : text not null
- created_at : timestamptz not null
- updated_at : timestamptz not null

recommended_indexes:
- unique(binding_ref)
- index(project_code)
- index(asset_ref)
- index(target_scope_type, target_scope_ref)
- index(binding_status)


# ============================================================
# 7. BUILDER_PREVIEW_SESSION
# ============================================================

table_name:
builder_preview_session

columns:
- id : bigserial primary key
- preview_session_id : text unique not null
- project_code : text not null
- runtime_family_code : text not null
- preview_basis : text not null
- basis_ref : text null
- preview_mode : text not null
- mock_mode_summary_json : jsonb null
- session_status : text not null
- preview_state_summary_json : jsonb null
- preview_output_summary_json : jsonb null
- created_by : text not null
- created_at : timestamptz not null
- updated_at : timestamptz not null
- expires_at : timestamptz null

recommended_indexes:
- unique(preview_session_id)
- index(project_code)
- index(session_status)
- index(expires_at)


# ============================================================
# 8. BUILDER_VALIDATION_RESULT
# ============================================================

table_name:
builder_validation_result

columns:
- id : bigserial primary key
- validation_result_ref : text unique not null
- project_code : text not null
- validation_stage : text not null
- validation_status : text not null
- basis_type : text not null
- basis_ref : text null
- runtime_family_code : text not null
- blocking_count : integer not null default 0
- warning_count : integer not null default 0
- info_count : integer not null default 0
- findings_summary_json : jsonb null
- detected_at : timestamptz not null

recommended_indexes:
- unique(validation_result_ref)
- index(project_code, validation_stage, detected_at desc)
- index(validation_status)
- index(basis_type, basis_ref)


# ============================================================
# 9. BUILDER_VALIDATION_FINDING
# ============================================================

table_name:
builder_validation_finding

columns:
- id : bigserial primary key
- finding_id : text unique not null
- validation_result_ref : text not null
- validation_stage : text not null
- severity : text not null
- affected_scope_type : text not null
- affected_scope_ref : text not null
- summary : text not null
- fix_hint : text null
- detected_at : timestamptz not null

recommended_indexes:
- unique(finding_id)
- index(validation_result_ref)
- index(severity)
- index(affected_scope_type, affected_scope_ref)


# ============================================================
# 10. BUILDER_EXPORT_PACKAGE
# ============================================================

table_name:
builder_export_package

columns:
- id : bigserial primary key
- export_package_code : text unique not null
- project_code : text not null
- revision_ref : text not null
- export_status : text not null
- export_summary : text null
- export_hash : text not null
- runtime_export_contract_ref : text null
- asset_manifest_ref : text null
- created_by : text not null
- created_at : timestamptz not null
- updated_at : timestamptz not null

recommended_indexes:
- unique(export_package_code)
- index(project_code, created_at desc)
- index(revision_ref)
- index(export_status)


# ============================================================
# 11. BUILDER_SUBMISSION_REQUEST
# ============================================================

table_name:
builder_submission_request

columns:
- id : bigserial primary key
- submission_request_ref : text unique not null
- project_code : text not null
- export_package_code : text not null
- game_title_code : text not null
- release_code : text not null
- seller_code : text null
- submission_status : text not null
- submission_summary : text null
- created_by : text not null
- created_at : timestamptz not null
- updated_at : timestamptz not null

recommended_indexes:
- unique(submission_request_ref)
- index(project_code, created_at desc)
- index(export_package_code)
- index(game_title_code)
- index(release_code)
- index(submission_status)


# ============================================================
# 12. BUILDER_PROJECT_COLLABORATOR
# ============================================================

table_name:
builder_project_collaborator

columns:
- id : bigserial primary key
- project_code : text not null
- collaborator_identity : text not null
- role_code : text not null
- collaborator_status : text not null
- created_at : timestamptz not null
- updated_at : timestamptz not null

recommended_indexes:
- unique(project_code, collaborator_identity)
- index(project_code)
- index(role_code)
- index(collaborator_status)


# ============================================================
# 13. BUILDER_BLOCK_LOCK
# ============================================================

table_name:
builder_block_lock

columns:
- id : bigserial primary key
- block_id : text not null
- lock_holder_identity : text not null
- lock_status : text not null
- acquired_at : timestamptz not null
- expires_at : timestamptz null

recommended_indexes:
- unique(block_id)
- index(lock_holder_identity)
- index(lock_status)
- index(expires_at)


# ============================================================
# 14. BUILDER_COMMENT
# ============================================================

table_name:
builder_comment

columns:
- id : bigserial primary key
- comment_ref : text unique not null
- project_code : text not null
- target_scope_type : text not null
- target_scope_ref : text not null
- author_identity : text not null
- comment_status : text not null
- comment_body : text not null
- created_at : timestamptz not null
- updated_at : timestamptz not null

recommended_indexes:
- unique(comment_ref)
- index(project_code)
- index(target_scope_type, target_scope_ref)
- index(author_identity)
- index(comment_status)


# ============================================================
# 15. FINAL COLUMN-LEVEL RULE
# ============================================================

These tables define the minimum column-level implementation shape
for Builder core persistence.

Core summary:

- project is the root object
- block is the minimum content object
- revision and autosave are distinct
- asset metadata and bindings are explicit
- preview remains non-authoritative
- validation findings remain structured
- export and submission are explicit lifecycle objects
- collaboration objects are first-class
