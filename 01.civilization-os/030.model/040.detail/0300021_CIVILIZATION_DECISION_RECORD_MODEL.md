# ============================================================
# CIVILIZATION DECISION RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical decision record model.

model_type:
- governance record model

primary_key:
- decision_record_id

natural_key:
- decision_domain
- decision_code
- correlation_id

fields:
- decision_record_id
- decision_domain
- decision_code
- decision_type
- decision_status
- decision_basis
- deciding_identity
- target_scope
- source_request_id
- source_state_version
- correlation_id
- causation_id
- decided_at
- created_at
- updated_at

decision_status_enum:
- proposed
- approved
- rejected
- superseded
- revoked

truth_boundary:
Decision records are canonical governance records.
Downstream execution must still be explicit and auditable.
