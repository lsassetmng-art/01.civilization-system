# ============================================================
# ESTIMATE DELIVERY STATE EXACT CONTRACT
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document fixes exact request / response payloads
for delivery state transitions,
resend behavior,
expiry,
revocation,
open tracking,
and response-basis traceability.

Principles:
- delivery state is distinct from publication state
- resend does not overwrite prior delivery meaning
- opened does not imply accepted
- response basis must point to a delivered revision basis
- readonly link state and delivery state must remain explicit

# ============================================================
# 2. COMMON RESPONSE ENVELOPE
# ============================================================

response_envelope:
  success: boolean
  code: string
  message: string
  data: object|null
  error:
    field: string|null
    detail: string|null

# ============================================================
# 3. DELIVERY RECORD CREATE
# ============================================================

operation:
- create_delivery_record

request:
  estimate_id: string
  revision_snapshot_id: string
  delivery_channel: pdf_export|email|readonly_link
  delivery_locale: string
  delivery_currency_code: string
  email_target: string|null
  readonly_link_id: string|null
  pdf_artifact_id: string|null

response_success:
  success: true
  code: DELIVERY_RECORD_CREATED
  message: Delivery record created
  data:
    delivery_record_id: string
    estimate_id: string
    revision_snapshot_id: string
    delivery_channel: string
    delivery_state: sent
    presented_at: string

# ============================================================
# 4. DELIVERY STATE TRANSITION SUBMIT
# ============================================================

operation:
- submit_delivery_state_transition

request:
  delivery_record_id: string
  from_state: not_sent|sent|delivery_failed|opened|expired|revoked
  to_state: sent|delivery_failed|opened|expired|revoked
  reason_code: string|null
  note: string|null

response_success:
  success: true
  code: DELIVERY_STATE_TRANSITION_ACCEPTED
  message: Delivery state transition accepted
  data:
    delivery_state_transition_id: string
    delivery_record_id: string
    from_state: string
    to_state: string
    changed_at: string

response_failure:
  success: false
  code: DELIVERY_STATE_TRANSITION_REJECTED
  message: Delivery state transition rejected
  data: null
  error:
    field: to_state|string|null
    detail: invalid transition or missing delivery record

# ============================================================
# 5. READONLY LINK EXPIRE
# ============================================================

operation:
- expire_readonly_link

request:
  link_id: string
  reason_code: string|null

response_success:
  success: true
  code: READONLY_LINK_EXPIRED
  message: Readonly link expired
  data:
    link_id: string
    link_state: expired
    expired_at: string

# ============================================================
# 6. READONLY LINK REVOKE
# ============================================================

operation:
- revoke_readonly_link

request:
  link_id: string
  reason_code: string|null

response_success:
  success: true
  code: READONLY_LINK_REVOKED
  message: Readonly link revoked
  data:
    link_id: string
    link_state: revoked
    revoked_at: string

# ============================================================
# 7. DELIVERY RESEND
# ============================================================

operation:
- resend_delivery

request:
  prior_delivery_record_id: string
  estimate_id: string
  revision_snapshot_id: string
  delivery_channel: pdf_export|email|readonly_link
  delivery_locale: string
  delivery_currency_code: string
  email_target: string|null
  expires_at: string|null

response_success:
  success: true
  code: DELIVERY_RESEND_ACCEPTED
  message: Delivery resend accepted
  data:
    prior_delivery_record_id: string
    new_delivery_record_id: string
    revision_snapshot_id: string
    delivery_channel: string
    delivery_state: sent
    presented_at: string

response_failure:
  success: false
  code: DELIVERY_RESEND_REJECTED
  message: Delivery resend rejected
  data: null
  error:
    field: prior_delivery_record_id|string|null
    detail: invalid prior delivery or resend input

# ============================================================
# 8. OPEN EVENT APPEND
# ============================================================

operation:
- append_delivery_open_event

request:
  estimate_id: string
  delivery_record_id: string|null
  link_id: string|null
  opened_at: string
  viewer_type: string|null
  locale: string|null
  device_hint: string|null
  ip_hint_if_allowed: string|null

response_success:
  success: true
  code: DELIVERY_OPEN_EVENT_APPENDED
  message: Delivery open event appended
  data:
    open_log_id: string
    estimate_id: string
    delivery_record_id: string|null
    link_id: string|null
    opened_at: string
    aggregate_first_opened_at: string|null
    aggregate_latest_opened_at: string
    aggregate_open_count: integer

# ============================================================
# 9. DELIVERY HISTORY LOAD
# ============================================================

operation:
- load_delivery_history_detail

request:
  estimate_id: string

response_success:
  success: true
  code: DELIVERY_HISTORY_DETAIL_READY
  message: Delivery history detail ready
  data:
    items:
      - delivery_record_id: string
        revision_snapshot_id: string
        delivery_channel: pdf_export|email|readonly_link
        delivery_state: not_sent|sent|delivery_failed|opened|expired|revoked
        artifact_type: pdf|readonly_link_payload|email_render|null
        artifact_reference_id: string|null
        delivery_locale: string
        delivery_currency_code: string
        presented_at: string
        latest_opened_at: string|null
        open_count: integer
        customer_response_state: no_response|accepted|revision_requested|rejected|null

# ============================================================
# 10. RESPONSE BASIS CREATE
# ============================================================

operation:
- create_customer_response_basis

request:
  customer_response_id: string
  estimate_id: string
  revision_snapshot_id: string
  delivery_record_id: string
  delivery_artifact_id: string|null

response_success:
  success: true
  code: CUSTOMER_RESPONSE_BASIS_CREATED
  message: Customer response basis created
  data:
    customer_response_basis_id: string
    customer_response_id: string
    revision_snapshot_id: string
    delivery_record_id: string
    delivery_artifact_id: string|null
    created_at: string

response_failure:
  success: false
  code: CUSTOMER_RESPONSE_BASIS_REJECTED
  message: Customer response basis rejected
  data: null
  error:
    field: revision_snapshot_id|string|null
    detail: response basis must point to a delivered revision basis

# ============================================================
# 11. DELIVERY BADGE SUMMARY LOAD
# ============================================================

operation:
- load_delivery_badge_summary

request:
  estimate_id: string

response_success:
  success: true
  code: DELIVERY_BADGE_SUMMARY_READY
  message: Delivery badge summary ready
  data:
    has_sent: boolean
    has_opened: boolean
    has_expiring_soon: boolean
    has_failed_delivery: boolean
    latest_delivery_state: string|null
    latest_customer_response_state: string|null

