# ============================================================
# K5 CORPORATE EXACT PAYLOAD
# ============================================================

status: exact-payload
domain: corporate
prepared_by: Zero
owner: Boss

endpoints:
- get_channel_detail
- upsert_channel_record
- upsert_corporate_oversight_record
- upsert_affiliated_streamer_reference

canonical_objects:
- channel_record
- channel_profile_state
- corporate_channel_oversight_record
- affiliated_streamer_reference
- corporate_oversight_dashboard_projection

channel_detail_shape:
{
  success: true,
  data: {
    channel_id,
    owner_principal_id,
    company_id?,
    channel_name,
    channel_handle?,
    public_profile: {
      profile_image_url?,
      banner_image_url?,
      description?,
      visibility_state
    },
    public_summary?: {
      official_stream_count?,
      archive_count?,
      clip_count?
    },
    updated_at
  },
  meta?: {
    request_id?,
    projection_version?
  }
}

channel_upsert_request_shape:
{
  channel_id?,
  owner_principal_id,
  company_id?,
  channel_name,
  channel_handle?,
  profile_image_url?,
  banner_image_url?,
  description?,
  visibility_state,
  idempotency_key
}

corporate_oversight_upsert_request_shape:
{
  corporate_oversight_record_id?,
  company_id,
  channel_id,
  oversight_state,
  review_issue_summary?: {
    open_count?,
    overdue_count?
  },
  stream_visibility_summary?: {
    public_count?,
    limited_count?,
    blocked_count?
  },
  note?,
  idempotency_key
}

affiliated_streamer_reference_upsert_request_shape:
{
  affiliated_streamer_reference_id?,
  company_id,
  target_principal_id,
  affiliation_state,
  affiliation_role?,
  visibility_scope?,
  note?,
  idempotency_key
}

mutation_response_shape:
{
  success: true,
  data: {
    canonical_id,
    canonical_type,
    resulting_state?,
    updated_at_or_created_at?
  }
}

corporate_dashboard_projection_shape:
{
  success: true,
  data: {
    company_id,
    channel_summaries?: [
      {
        channel_id,
        channel_name,
        visibility_state,
        official_stream_count?,
        review_issue_count?,
        updated_at
      }
    ],
    affiliated_streamer_summaries?: [
      {
        target_principal_id,
        display_name?,
        affiliation_state,
        affiliation_role?,
        updated_at
      }
    ],
    updated_at
  },
  meta?: {
    request_id?
  }
}

field_rules:
- channel_name is required
- owner_principal_id is required
- visibility_state is required
- company_id is required for oversight and affiliation records
- oversight_state is required
- affiliation_state is required
- idempotency_key is required for corporate mutations in scope

not_returned_publicly:
- internal support flags
- private company notes
- raw oversight routing markers
- raw enforcement / workflow internals
