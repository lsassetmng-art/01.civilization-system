
# ============================================================
# ESTIMATE DELIVERY STATE TRANSITION MODEL
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

estimate_delivery_state_transition records explicit delivery state changes.

Required fields:
- delivery_state_transition_id
- delivery_record_id
- from_state
- to_state
- changed_at
- changed_by
- reason_code
- note

Representative from_state / to_state values:
- not_sent
- sent
- delivery_failed
- opened
- expired
- revoked

This model supports explicit auditability for customer-facing delivery.

