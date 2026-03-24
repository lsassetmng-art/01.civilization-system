# ============================================================
# CIVILIZATION APPROVAL REQUEST MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical approval request model.

model_type:
- governance model

primary_key:
- approval_request_id

natural_key:
- approval_domain
- approval_code
- correlation_id

fields:
- approval_request_id
- approval_domain
- approval_code
- request_type
- requester_identity
- approver_group
- approval_status
- requested_action_summary
- requested_payload
- payload_hash
- source_state_version
- contract_version
- correlation_id
- causation_id
- requested_at
- decided_at
- expires_at
- created_at
- updated_at

approval_status_enum:
- pending
- under_review
- approved
- rejected
- expired
- cancelled

state_transition:
- pending -> under_review
- under_review -> approved
- under_review -> rejected
- pending -> expired
- pending -> cancelled

truth_boundary:
This model stores governance decision state.
It does not directly mutate downstream domain truth by itself.

idempotency_rule:
The same approval_code and correlation_id must not create duplicate effective approval requests.
