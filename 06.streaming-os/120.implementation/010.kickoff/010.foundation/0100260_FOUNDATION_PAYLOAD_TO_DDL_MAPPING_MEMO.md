# ============================================================
# FOUNDATION PAYLOAD TO DDL MAPPING MEMO
# ============================================================

status: canonical-mapping-memo
layer: implementation
domain: foundation
system: StreamingOS
prepared_by: Zero
owner: Boss

purpose:
Maps K1 payload fields to K1 table-column exactness at meaning level.

principal_mapping:

payload_object:
- streaming_principal

table:
- streaming_principals

field_mapping:
- principal_id -> principal_id
- principal_type -> principal_type
- display_name -> display_name
- handle -> handle
- profile_image_url -> profile_image_url
- banner_image_url -> banner_image_url
- bio -> bio
- public_country_code -> public_country_code
- public_language_code -> public_language_code
- channel_id -> channel_id
- company_id -> company_id
- affiliation_type -> affiliation_type
- ownership_type -> ownership_type
- visibility_state -> visibility_state
- verification_state -> verification_state
- followable_flag -> followable_flag
- created_at -> created_at
- updated_at -> updated_at

session_mapping:

payload_object:
- streaming_session

table:
- streaming_sessions

field_mapping:
- session_id -> session_id
- principal_id -> principal_id
- session_kind -> session_kind
- title -> title
- description -> description
- lifecycle_state -> lifecycle_state
- visibility_state -> visibility_state
- monetization_mode -> monetization_mode
- age_gate_level -> age_gate_level
- language_code -> language_code
- primary_country_code -> primary_country_code
- thumbnail_asset_ref -> thumbnail_asset_ref
- scheduled_start_at -> scheduled_start_at
- actual_start_at -> actual_start_at
- actual_end_at -> actual_end_at
- publish_ready_flag -> publish_ready_flag
- governance_block_flag -> governance_block_flag
- created_at -> created_at
- updated_at -> updated_at

memo_notes:
- meta fields in API response remain transport-level wrappers, not table columns
- transition_capabilities are computed/projection fields, not base-table columns
- request_id and projection_version are not base-table columns
