# ============================================================
# GAME BUILDER DB SCHEMA ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the official database schema architecture of Game Builder.

This architecture defines the logical database model
needed to implement Builder.

It covers:
- project tables
- block tables
- revision tables
- autosave tables
- asset metadata tables
- preview session tables
- validation tables
- export tables
- submission tables
- collaboration / lock / comment tables

This document defines logical schema families,
not vendor-specific SQL syntax.


# ============================================================
# 1. DB PRINCIPLE
# ============================================================

The database stores structured Builder truth.

It must store:
- identities
- metadata
- bindings
- statuses
- lineage references
- validation findings
- lifecycle state

It should not be the primary home
for large binary asset payloads.


# ============================================================
# 2. PROJECT SCHEMA FAMILY
# ============================================================

Minimum logical tables:

- builder_project
- builder_project_status
- builder_project_linkage

builder_project minimum logical columns:
- project_code
- workspace_code
- game_title_code nullable where pre-link phase exists
- project_name
- project_status
- runtime_family_code
- runtime_profile_code nullable
- ruleset_profile_code nullable
- template_profile_code nullable
- template_family_code nullable
- template_tier nullable
- created_at
- updated_at

Project is the primary Builder authoring root.


# ============================================================
# 3. BLOCK SCHEMA FAMILY
# ============================================================

Minimum logical tables:

- builder_block
- builder_block_payload
- builder_block_validation_state
- builder_block_lineage

builder_block minimum logical columns:
- block_id
- project_code
- block_type
- block_title
- parent_block_id nullable
- order_index
- zone_classification
- block_status
- created_at
- updated_at

builder_block_payload minimum logical columns:
- block_id
- payload_version
- content_payload_json
- created_at

Payload storage must remain queryable enough
for validation and editor navigation.


# ============================================================
# 4. REVISION SCHEMA FAMILY
# ============================================================

Minimum logical tables:

- builder_revision
- builder_revision_snapshot_ref
- builder_revision_validation_link

builder_revision minimum logical columns:
- revision_ref
- project_code
- revision_number
- revision_status
- content_hash
- created_by
- created_at

Revision is immutable once created.


# ============================================================
# 5. AUTOSAVE SCHEMA FAMILY
# ============================================================

Minimum logical tables:

- builder_autosave_snapshot
- builder_autosave_payload_ref

builder_autosave_snapshot minimum logical columns:
- autosave_snapshot_ref
- project_code
- snapshot_status
- snapshot_hash
- created_at
- origin_summary

Autosave must remain distinct from revision.


# ============================================================
# 6. ASSET SCHEMA FAMILY
# ============================================================

Minimum logical tables:

- builder_asset
- builder_asset_variant
- builder_asset_binding
- builder_asset_usage
- builder_asset_validation_state

builder_asset minimum logical columns:
- asset_ref
- project_code
- asset_type
- asset_family
- asset_status
- usage_scope
- source_type
- asset_hash nullable
- created_at
- updated_at

builder_asset_binding minimum logical columns:
- binding_ref
- project_code
- asset_ref
- target_scope_type
- target_scope_ref
- usage_scope
- binding_status
- created_at
- updated_at


# ============================================================
# 7. PREVIEW SCHEMA FAMILY
# ============================================================

Minimum logical tables:

- builder_preview_session
- builder_preview_state_ref
- builder_preview_output

builder_preview_session minimum logical columns:
- preview_session_id
- project_code
- runtime_family_code
- preview_basis
- preview_mode
- session_status
- mock_mode_summary_json nullable
- created_at
- updated_at
- expires_at nullable

Preview data remains non-authoritative.


# ============================================================
# 8. VALIDATION SCHEMA FAMILY
# ============================================================

Minimum logical tables:

- builder_validation_result
- builder_validation_finding

builder_validation_result minimum logical columns:
- validation_result_ref
- project_code
- validation_stage
- validation_status
- basis_type
- basis_ref nullable
- runtime_family_code
- blocking_count
- warning_count
- info_count
- detected_at

builder_validation_finding minimum logical columns:
- finding_id
- validation_result_ref
- severity
- affected_scope_type
- affected_scope_ref
- summary
- fix_hint nullable
- detected_at


# ============================================================
# 9. EXPORT SCHEMA FAMILY
# ============================================================

Minimum logical tables:

- builder_export_package
- builder_runtime_export_contract_ref
- builder_export_manifest_ref

builder_export_package minimum logical columns:
- export_package_code
- project_code
- revision_ref
- export_status
- export_hash
- created_at
- updated_at


# ============================================================
# 10. SUBMISSION SCHEMA FAMILY
# ============================================================

Minimum logical tables:

- builder_submission_request
- builder_submission_status_history

builder_submission_request minimum logical columns:
- submission_request_ref
- project_code
- export_package_code
- game_title_code
- release_code
- submission_status
- created_at
- updated_at


# ============================================================
# 11. COLLABORATION SCHEMA FAMILY
# ============================================================

Minimum logical tables:

- builder_project_collaborator
- builder_project_lock
- builder_block_lock
- builder_comment

builder_project_collaborator minimum logical columns:
- project_code
- collaborator_identity
- role_code
- collaborator_status
- created_at
- updated_at

builder_block_lock minimum logical columns:
- block_id
- lock_holder_identity
- lock_status
- acquired_at
- expires_at nullable

builder_comment minimum logical columns:
- comment_ref
- project_code
- target_scope_type
- target_scope_ref
- author_identity
- comment_status
- comment_body
- created_at
- updated_at


# ============================================================
# 12. STATUS / ENUM PRINCIPLE
# ============================================================

All lifecycle-heavy tables should use explicit statuses.

Examples:
- project_status
- block_status
- revision_status
- snapshot_status
- asset_status
- session_status
- validation_status
- export_status
- submission_status
- lock_status
- comment_status

Status ambiguity is prohibited.


# ============================================================
# 13. LINEAGE PRINCIPLE
# ============================================================

The DB must support lineage across:
- project
- block
- revision
- autosave
- asset
- export
- submission

Lineage is necessary for:
- restore
- audit
- export tracing
- submission tracing
- safe duplication


# ============================================================
# 14. JSON / STRUCTURED PAYLOAD PRINCIPLE
# ============================================================

Builder may store some structured payloads as JSON-like columns,
but only where:
- validation can still inspect required structure
- editor can still navigate required structure
- critical identities remain relationally addressable

Opaque blob-only block truth is discouraged.


# ============================================================
# 15. FINAL ARCHITECTURAL RULE
# ============================================================

The Builder DB schema must remain structured,
status-explicit,
and lineage-aware.

Core summary:

- project is the root authoring object
- block is the minimum content object
- revision and autosave remain distinct
- asset metadata and bindings remain explicit
- preview remains non-authoritative
- validation findings remain structured
- export and submission remain explicit lifecycle objects
- collaboration and locks remain first-class
