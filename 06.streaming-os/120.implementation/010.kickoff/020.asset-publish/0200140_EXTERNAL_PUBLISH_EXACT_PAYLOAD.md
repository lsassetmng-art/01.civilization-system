# ============================================================
# K2 EXTERNAL PUBLISH EXACT PAYLOAD
# ============================================================

status: exact-payload
domain: external-publish
prepared_by: Zero
owner: Boss

endpoints:
- create_external_publish_job
- get_external_publish_job_detail
- list_external_publish_jobs

canonical_object:
external_publish_job

create_request_shape:
{
  publish_source_type,
  publish_source_id,
  publish_target_type,
  publish_target_account_ref,
  title_override?,
  description_override?,
  visibility_override?,
  scheduled_publish_at?,
  localization_override?: {
    language_code?,
    primary_country_code?
  },
  idempotency_key
}

detail_response_shape:
{
  success: true,
  data: {
    external_publish_job_id,
    publish_source_type,
    publish_source_id,
    publish_target_type,
    publish_target_account_ref,
    job_state,
    dispatch_state,
    result_state?,
    title_override?,
    description_override?,
    visibility_override?,
    scheduled_publish_at?,
    external_reference_id?,
    last_dispatch_at?,
    last_result_at?,
    created_at,
    updated_at
  },
  meta?: {
    request_id?,
    retry_capability_flag?,
    terminal_flag?
  }
}

list_response_shape:
{
  success: true,
  data: {
    items: [
      {
        external_publish_job_id,
        publish_source_type,
        publish_source_id,
        publish_target_type,
        job_state,
        dispatch_state,
        result_state?,
        scheduled_publish_at?,
        last_dispatch_at?,
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
- publish_source_type
- publish_source_id
- publish_target_type
- job_state
- dispatch_state
- result_state

sort_allowlist:
- updated_at
- created_at
- scheduled_publish_at
- last_dispatch_at
- last_result_at

field_rules:
- external_publish_job_id is canonical stable id
- publish_source_type is required
- publish_source_id is required
- publish_target_type is required
- publish_target_account_ref is required
- job_state is required
- dispatch_state is required
- result_state is nullable until result exists
- external_reference_id is nullable
- create request must require idempotency_key

not_returned_publicly:
- raw access tokens
- secret target credentials
- transport adapter internals
- broker message identifiers
- raw external error payloads
