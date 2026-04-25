# ============================================================
# ASSET PUBLISH PAYLOAD TO DDL MAPPING MEMO
# ============================================================

status: canonical-mapping-memo
layer: implementation
domain: asset-publish
system: StreamingOS
prepared_by: Zero
owner: Boss

purpose:
Maps K2 payload fields to K2 table-column exactness at meaning level.

archive_asset_mapping:

payload_object:
- archive_asset

table:
- archive_assets

field_mapping:
- archive_asset_id -> archive_asset_id
- principal_id -> principal_id
- source_session_id -> source_session_id
- title -> title
- description -> description
- thumbnail_asset_ref -> thumbnail_asset_ref
- duration_seconds -> duration_seconds
- visibility_state -> visibility_state
- publication_state -> publication_state
- review_state -> review_state
- governance_state -> governance_state
- age_gate_level -> age_gate_level
- monetization_mode -> monetization_mode
- language_code -> language_code
- primary_country_code -> primary_country_code
- category_tags -> category_tags
- published_at -> published_at
- created_at -> created_at
- updated_at -> updated_at

clip_asset_mapping:

payload_object:
- clip_asset

table:
- clip_assets

field_mapping:
- clip_asset_id -> clip_asset_id
- principal_id -> principal_id
- source_archive_asset_id -> source_archive_asset_id
- source_session_id -> source_session_id
- title -> title
- description -> description
- thumbnail_asset_ref -> thumbnail_asset_ref
- duration_seconds -> duration_seconds
- clip_start_seconds -> clip_start_seconds
- clip_end_seconds -> clip_end_seconds
- visibility_state -> visibility_state
- publication_state -> publication_state
- review_state -> review_state
- governance_state -> governance_state
- age_gate_level -> age_gate_level
- monetization_mode -> monetization_mode
- language_code -> language_code
- primary_country_code -> primary_country_code
- category_tags -> category_tags
- published_at -> published_at
- created_at -> created_at
- updated_at -> updated_at

external_publish_mapping:

payload_object:
- external_publish_job

table:
- external_publish_jobs

field_mapping:
- external_publish_job_id -> external_publish_job_id
- publish_source_type -> publish_source_type
- publish_source_id -> publish_source_id
- publish_target_type -> publish_target_type
- publish_target_account_ref -> publish_target_account_ref
- job_state -> job_state
- dispatch_state -> dispatch_state
- result_state -> result_state
- title_override -> title_override
- description_override -> description_override
- visibility_override -> visibility_override
- scheduled_publish_at -> scheduled_publish_at
- external_reference_id -> external_reference_id
- last_dispatch_at -> last_dispatch_at
- last_result_at -> last_result_at
- created_at -> created_at
- updated_at -> updated_at

memo_notes:
- playable_flag and derivation_flag are projection/meta fields, not base-table columns
- request_id and projection_version are transport/meta fields, not base-table columns
- retry_capability_flag and terminal_flag are computed/runtime-facing semantics, not base-table columns
