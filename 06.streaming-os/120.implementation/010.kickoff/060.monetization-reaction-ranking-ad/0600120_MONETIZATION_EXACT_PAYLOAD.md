# ============================================================
# K6 MONETIZATION EXACT PAYLOAD
# ============================================================

status: exact-payload
domain: monetization
prepared_by: Zero
owner: Boss

endpoints:
- create_tip_event
- get_tip_event_detail
- list_tip_events

canonical_objects:
- tip_event
- tip_beneficiary_resolution_projection
- tip_currency_conversion_projection

tip_create_request_shape:
{
  target_type,
  target_id,
  payer_principal_id?,
  beneficiary_principal_id?,
  tip_amount,
  tip_currency_code,
  tip_mode,
  emotional_context_code?,
  note?,
  idempotency_key
}

tip_detail_shape:
{
  success: true,
  data: {
    tip_event_id,
    target_type,
    target_id,
    payer_principal_id?,
    beneficiary_principal_id?,
    resolved_beneficiary_principal_id?,
    tip_amount,
    tip_currency_code,
    converted_amount?,
    converted_currency_code?,
    tip_mode,
    processing_state,
    emotional_context_code?,
    created_at,
    updated_at
  },
  meta?: {
    request_id?,
    beneficiary_resolution_state?,
    currency_conversion_state?
  }
}

tip_list_shape:
{
  success: true,
  data: {
    items: [
      {
        tip_event_id,
        target_type,
        target_id,
        beneficiary_principal_id?,
        tip_amount,
        tip_currency_code,
        processing_state,
        created_at,
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
- target_type
- target_id
- beneficiary_principal_id
- processing_state
- tip_currency_code
- tip_mode

sort_allowlist:
- created_at
- updated_at
- tip_amount

field_rules:
- target_type is required
- target_id is required
- tip_amount is required
- tip_currency_code is required
- tip_mode is required
- idempotency_key is required
- beneficiary resolution may be deferred but canonical event remains stable
- currency conversion may be deferred but canonical event remains stable

not_returned_publicly:
- payment instrument reference
- raw provider response
- raw limit / restriction evaluation detail
- raw stop-state markers
- internal fraud / abuse markers
