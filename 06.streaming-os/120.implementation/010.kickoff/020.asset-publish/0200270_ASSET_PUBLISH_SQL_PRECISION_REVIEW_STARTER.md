# ============================================================
# ASSET PUBLISH SQL PRECISION REVIEW STARTER
# ============================================================

status: canonical-review-starter
layer: implementation
domain: asset-publish
system: StreamingOS
prepared_by: Zero
owner: Boss

purpose:
Defines the SQL-precision review starter list for K2 asset-publish.

review_role_note:
- Sato(DB reviewer) participation is required when SQL phase starts

review_scope:
- archive_assets
- clip_assets
- external_publish_jobs

archive_asset_sql_precision_items:
- decide exact type for archive_asset_id
- decide exact type for principal_id FK
- decide exact type for source_session_id FK
- decide exact type/length strategy for title
- decide exact type strategy for description
- decide exact type for thumbnail_asset_ref
- decide exact numeric type for duration_seconds
- decide exact type for category_tags storage
- decide exact timestamp type for published_at
- decide exact check set implementation for visibility_state
- decide exact check set implementation for publication_state
- decide exact check set implementation for review_state
- decide exact check set implementation for governance_state
- decide exact check set implementation for age_gate_level
- decide exact check set implementation for monetization_mode

clip_asset_sql_precision_items:
- decide exact type for clip_asset_id
- decide exact type for principal_id FK
- decide exact type for source_archive_asset_id FK
- decide exact type for source_session_id FK
- decide exact numeric type for duration_seconds
- decide exact numeric type for clip_start_seconds
- decide exact numeric type for clip_end_seconds
- decide exact constraint strategy for clip_end_seconds >= clip_start_seconds
- decide exact type for category_tags storage
- decide exact check set implementation for visibility_state
- decide exact check set implementation for publication_state
- decide exact check set implementation for review_state
- decide exact check set implementation for governance_state
- decide exact check set implementation for age_gate_level
- decide exact check set implementation for monetization_mode

external_publish_sql_precision_items:
- decide exact type for external_publish_job_id
- decide exact type strategy for publish_source_type
- decide exact type strategy for publish_source_id
- decide exact type strategy for publish_target_type
- decide exact type strategy for publish_target_account_ref
- decide exact type strategy for title_override
- decide exact type strategy for description_override
- decide exact type strategy for visibility_override
- decide exact timestamp type for scheduled_publish_at
- decide exact timestamp type for last_dispatch_at
- decide exact timestamp type for last_result_at
- decide exact type strategy for external_reference_id
- decide exact check set implementation for job_state
- decide exact check set implementation for dispatch_state
- decide exact check set implementation for result_state

constraint_and_index_items:
- confirm FK action for archive -> principal
- confirm FK action for clip -> principal
- confirm FK action for clip -> archive
- confirm FK action for archive/clip -> session where applicable
- confirm minimal index set for asset visibility/publication queries
- confirm minimal index set for source-session/source-archive queries
- confirm minimal index set for publish job state queries
- confirm scheduled_publish_at index strategy
- confirm whether partial indexes are needed later or not

policy_sql_items:
- decide public projection strategy for archive assets
- decide public projection strategy for clip assets
- decide owner-bound projection strategy for creator/control-plane screens
- decide oversight-safe subset projection strategy
- decide external publish job owner/runtime/integration visibility strategy
- decide support-path audit linkage for asset/publish overrides

out_of_scope_note:
This document prepares SQL review only.
It does not execute SQL against PERSONA_DATABASE_URL.
