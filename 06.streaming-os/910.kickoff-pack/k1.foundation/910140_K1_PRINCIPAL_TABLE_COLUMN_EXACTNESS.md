# ============================================================
# K1 PRINCIPAL TABLE-COLUMN EXACTNESS
# ============================================================

status: exact-table-column
domain: principal
table: streaming_principals
prepared_by: Zero
owner: Boss

required_columns:
- principal_id
- principal_type
- display_name
- handle
- ownership_type
- visibility_state
- verification_state
- followable_flag
- created_at
- updated_at

optional_columns:
- profile_image_url
- banner_image_url
- bio
- public_country_code
- public_language_code
- channel_id
- company_id
- affiliation_type

recommended_constraints:
- pk(principal_id)
- unique(handle)
- check(principal_type in allowed set)
- check(ownership_type in allowed set)
- check(visibility_state in allowed set)
- check(verification_state in allowed set)

recommended_indexes:
- idx_streaming_principals_handle
- idx_streaming_principals_channel_id
- idx_streaming_principals_company_id
- idx_streaming_principals_visibility_state
- idx_streaming_principals_updated_at

semantic_notes:
- channel_id nullable because not every principal is a channel owner
- company_id nullable because not every principal is company-bound
- affiliation_type nullable because affiliation is not universal
- ownership_type must not be derived implicitly from affiliation
- public_country_code and public_language_code are projection-safe fields only

open_for_sql_precision_only:
- exact SQL type names
- varchar lengths
- text vs varchar choice
- index method
- exact default clause
