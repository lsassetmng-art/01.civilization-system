# ============================================================
# K1 PRINCIPAL EXACT PAYLOAD
# ============================================================

status: exact-payload
domain: principal
prepared_by: Zero
owner: Boss

endpoint:
- get_streaming_principal_detail
- list_streaming_principals

canonical_object:
streaming_principal

detail_response_shape:
{
  success: true,
  data: {
    principal_id,
    principal_type,
    display_name,
    handle,
    profile_image_url?,
    banner_image_url?,
    bio?,
    public_country_code?,
    public_language_code?,
    channel_id?,
    company_id?,
    affiliation_type?,
    ownership_type,
    visibility_state,
    verification_state,
    followable_flag,
    created_at,
    updated_at
  },
  meta?: {
    request_id?,
    resolved_projection_version?
  }
}

list_response_shape:
{
  success: true,
  data: {
    items: [
      {
        principal_id,
        principal_type,
        display_name,
        handle,
        profile_image_url?,
        channel_id?,
        ownership_type,
        visibility_state,
        verification_state,
        followable_flag,
        updated_at
      }
    ]
  },
  meta?: {
    limit?,
    offset?,
    cursor?,
    total_count?
  }
}

filter_allowlist:
- principal_type
- ownership_type
- visibility_state
- verification_state
- company_id
- channel_id
- followable_flag

sort_allowlist:
- updated_at
- created_at
- display_name

field_rules:
- principal_id is canonical stable id
- principal_type is required
- display_name is required
- handle is required and unique at business level
- ownership_type is required
- visibility_state is required
- verification_state is required
- followable_flag is required
- affiliation_type is nullable
- public_* fields are projection-safe fields only

not_returned_publicly:
- internal_actor_class
- raw support flags
- internal policy tags
- private contact fields
- moderation-only flags
