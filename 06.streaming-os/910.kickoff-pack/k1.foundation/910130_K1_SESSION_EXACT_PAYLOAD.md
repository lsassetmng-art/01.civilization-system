# ============================================================
# K1 SESSION EXACT PAYLOAD
# ============================================================

status: exact-payload
domain: session
prepared_by: Zero
owner: Boss

endpoints:
- create_streaming_session
- update_streaming_session
- get_streaming_session_detail
- list_streaming_sessions
- transition_streaming_session_state

canonical_object:
streaming_session

create_request_shape:
{
  principal_id,
  session_kind,
  title,
  description?,
  scheduled_start_at?,
  visibility_state,
  monetization_mode?,
  age_gate_level?,
  language_code?,
  primary_country_code?,
  thumbnail_asset_ref?,
  idempotency_key
}

update_request_shape:
{
  session_id,
  title?,
  description?,
  scheduled_start_at?,
  visibility_state?,
  monetization_mode?,
  age_gate_level?,
  language_code?,
  primary_country_code?,
  thumbnail_asset_ref?
}

transition_request_shape:
{
  session_id,
  transition_action,
  reason_code?,
  note?,
  idempotency_key
}

detail_response_shape:
{
  success: true,
  data: {
    session_id,
    principal_id,
    session_kind,
    title,
    description?,
    lifecycle_state,
    visibility_state,
    monetization_mode?,
    age_gate_level?,
    language_code?,
    primary_country_code?,
    thumbnail_asset_ref?,
    scheduled_start_at?,
    actual_start_at?,
    actual_end_at?,
    publish_ready_flag,
    governance_block_flag,
    created_at,
    updated_at
  },
  meta?: {
    request_id?,
    transition_capabilities?: [
      transition_action
    ]
  }
}

list_response_shape:
{
  success: true,
  data: {
    items: [
      {
        session_id,
        principal_id,
        session_kind,
        title,
        lifecycle_state,
        visibility_state,
        scheduled_start_at?,
        actual_start_at?,
        actual_end_at?,
        publish_ready_flag,
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
- principal_id
- session_kind
- lifecycle_state
- visibility_state
- monetization_mode
- age_gate_level
- publish_ready_flag

sort_allowlist:
- updated_at
- created_at
- scheduled_start_at
- actual_start_at

transition_action_allowlist:
- schedule
- open_live
- pause
- resume
- end
- archive
- cancel

not_returned_publicly:
- internal_runtime_lock_version
- raw worker retry markers
- support-only override reason
- private policy evaluation notes
