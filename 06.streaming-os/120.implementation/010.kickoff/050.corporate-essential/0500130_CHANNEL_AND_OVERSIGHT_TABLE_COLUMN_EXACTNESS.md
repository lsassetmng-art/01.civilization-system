# ============================================================
# K5 CHANNEL AND OVERSIGHT TABLE-COLUMN EXACTNESS
# ============================================================

status: exact-table-column
domain: corporate
prepared_by: Zero
owner: Boss

tables:
- channel_records
- channel_profile_states
- corporate_channel_oversight_records
- affiliated_streamer_references

channel_records_required_columns:
- channel_id
- owner_principal_id
- channel_name
- visibility_state
- updated_at

channel_records_optional_columns:
- company_id
- channel_handle
- created_at

channel_profile_states_required_columns:
- channel_profile_state_id
- channel_id
- updated_at

channel_profile_states_optional_columns:
- profile_image_url
- banner_image_url
- description
- created_at

corporate_channel_oversight_records_required_columns:
- corporate_oversight_record_id
- company_id
- channel_id
- oversight_state
- updated_at

corporate_channel_oversight_records_optional_columns:
- review_issue_summary_json
- stream_visibility_summary_json
- note
- created_at

affiliated_streamer_references_required_columns:
- affiliated_streamer_reference_id
- company_id
- target_principal_id
- affiliation_state
- updated_at

affiliated_streamer_references_optional_columns:
- affiliation_role
- visibility_scope
- note
- created_at

recommended_constraints:
- pk(channel_id) for channel_records
- fk(owner_principal_id -> streaming_principals.principal_id)
- fk(company_id -> company/company-like root when later formalized) nullable on channel_records
- fk(channel_id -> channel_records.channel_id) for channel_profile_states
- fk(channel_id -> channel_records.channel_id) for corporate_channel_oversight_records
- check(visibility_state in allowed set)
- check(oversight_state in allowed set)
- check(affiliation_state in allowed set)

recommended_indexes:
- idx_channel_records_owner_principal_id
- idx_channel_records_company_id
- idx_channel_records_visibility_state
- idx_channel_profile_states_channel_id
- idx_corporate_channel_oversight_records_company_id
- idx_corporate_channel_oversight_records_channel_id
- idx_affiliated_streamer_references_company_id
- idx_affiliated_streamer_references_target_principal_id
- idx_affiliated_streamer_references_affiliation_state

semantic_notes:
- channel identity remains distinct from principal identity
- company_id on channel_records is optional because not every channel is company-owned
- channel_profile_states remain profile/presentation state, not ownership state
- oversight record remains company/channel control object, not public channel profile object
- affiliated_streamer_reference remains affiliation object, not ownership object

open_for_sql_precision_only:
- exact SQL type names
- exact json vs structured-column choices
- exact fk actions
- exact unique constraints
- exact default clauses
