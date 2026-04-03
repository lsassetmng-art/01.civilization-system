# ============================================================
# CIVILIZATION SANCTION RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical sanction record model.

model_type:
- governance action model

primary_key:
- sanction_record_id

natural_key:
- sanction_code
- target_scope
- correlation_id

fields:
- sanction_record_id
- sanction_code
- sanction_type
- sanction_status
- target_scope
- enforcement_case_id
- approval_request_id
- severity
- sanction_payload
- payload_hash
- effective_from
- effective_until
- correlation_id
- causation_id
- created_at
- updated_at

sanction_status_enum:
- pending
- approved
- active
- lifted
- expired
- revoked

state_transition:
- pending -> approved
- approved -> active
- active -> lifted
- active -> expired
- active -> revoked

truth_boundary:
Sanction truth is canonical governance action truth.
