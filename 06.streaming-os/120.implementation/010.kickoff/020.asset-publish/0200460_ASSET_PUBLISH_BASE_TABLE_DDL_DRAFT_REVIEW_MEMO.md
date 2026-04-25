# ============================================================
# ASSET PUBLISH BASE TABLE DDL DRAFT REVIEW MEMO
# ============================================================

status: canonical-ddl-draft-memo
layer: implementation
domain: asset-publish
system: StreamingOS
prepared_by: Zero
owner: Boss

draft_table_plan:

archive_assets:
- archive_asset_id: uuid primary key
- principal_id: uuid not null
- source_session_id: uuid null
- title: text not null
- description: text null
- thumbnail_asset_ref: text null
- duration_seconds: integer not null
- visibility_state: text not null
- publication_state: text not null
- review_state: text not null
- governance_state: text not null
- age_gate_level: text not null
- monetization_mode: text not null
- language_code: text null
- primary_country_code: text null
- category_tags: text[] null
- published_at: timestamptz null
- created_at: timestamptz not null
- updated_at: timestamptz not null

clip_assets:
- clip_asset_id: uuid primary key
- principal_id: uuid not null
- source_archive_asset_id: uuid null
- source_session_id: uuid null
- title: text not null
- description: text null
- thumbnail_asset_ref: text null
- duration_seconds: integer not null
- clip_start_seconds: integer not null
- clip_end_seconds: integer not null
- visibility_state: text not null
- publication_state: text not null
- review_state: text not null
- governance_state: text not null
- age_gate_level: text not null
- monetization_mode: text not null
- language_code: text null
- primary_country_code: text null
- category_tags: text[] null
- published_at: timestamptz null
- created_at: timestamptz not null
- updated_at: timestamptz not null

external_publish_jobs:
- external_publish_job_id: uuid primary key
- publish_source_type: text not null
- publish_source_id: uuid not null
- publish_target_type: text not null
- publish_target_account_ref: text not null
- job_state: text not null
- dispatch_state: text not null
- result_state: text null
- title_override: text null
- description_override: text null
- visibility_override: text null
- scheduled_publish_at: timestamptz null
- external_reference_id: text null
- last_dispatch_at: timestamptz null
- last_result_at: timestamptz null
- created_at: timestamptz not null
- updated_at: timestamptz not null

draft_constraint_plan:
- primary keys on all three tables
- foreign keys from archive/clip principal_id to principal root
- optional foreign keys for source_session_id and source_archive_asset_id
- clip range check constraint enforcing positive ordered range
- check constraints on all closed state/type families
- publish_source_type stays within closed source-family boundary

open_review_points:
- final FK actions for archive/clip/session lineage references
- integer seconds vs higher precision for duration/range
- text[] vs alternative storage for category_tags
- exact enforcement form for polymorphic publish source contract
- whether visibility_override remains text or becomes constrained text with check
