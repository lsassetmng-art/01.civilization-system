# ============================================================
# K3 CREATOR PLATFORM TABLE-COLUMN EXACTNESS
# ============================================================

status: exact-table-column
domain: creator-platform
prepared_by: Zero
owner: Boss

tables:
- creator_profile_view_states
- creator_studio_drafts
- upload_preparation_records
- creator_settings_states
- creator_analytics_snapshot_refs

creator_profile_view_states_required_columns:
- creator_profile_view_state_id
- principal_id
- view_state_key
- updated_at

creator_studio_drafts_required_columns:
- draft_id
- principal_id
- draft_kind
- save_mode
- updated_at

creator_studio_drafts_optional_columns:
- linked_session_id
- title
- description
- thumbnail_asset_ref
- visibility_state
- scheduled_publish_at
- language_code
- primary_country_code
- created_at

upload_preparation_records_required_columns:
- upload_preparation_record_id
- principal_id
- source_asset_kind
- upload_state
- updated_at

upload_preparation_records_optional_columns:
- linked_session_id
- source_locator_ref
- file_name
- content_type
- byte_size
- checksum_ref
- created_at

creator_settings_states_required_columns:
- creator_settings_state_id
- principal_id
- updated_at

creator_settings_states_optional_columns:
- default_visibility_state
- default_language_code
- default_primary_country_code
- notification_preference_json
- studio_preference_json
- created_at

creator_analytics_snapshot_refs_required_columns:
- creator_analytics_snapshot_ref_id
- principal_id
- period_key
- snapshot_ref
- updated_at

recommended_constraints:
- principal-bound fk for all creator-side tables
- linked_session_id nullable fk where applicable
- check(draft_kind in allowed set)
- check(save_mode in allowed set)
- check(upload_state in allowed set)
- check(default_visibility_state in allowed set or null)

recommended_indexes:
- principal_id indexes across all creator-side tables
- updated_at indexes across all creator-side tables
- linked_session_id index for creator_studio_drafts
- linked_session_id index for upload_preparation_records
- period_key index for creator_analytics_snapshot_refs

semantic_notes:
- creator_studio_drafts are creator control-plane objects
- upload_preparation_records are upload pipeline preparation states
- creator_settings_states remain creator-self scoped
- creator_analytics_snapshot_refs remain projection references, not raw event tables

open_for_sql_precision_only:
- exact SQL type names
- exact json vs structured-column choices
- exact fk actions
- exact default clauses
