# ============================================================
# CIVILIZATION GOVERNANCE ESCALATION RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical governance escalation record model.

model_type:
- governance escalation model

primary_key:
- governance_escalation_record_id

natural_key:
- escalation_scope
- escalation_code
- correlation_id

fields:
- governance_escalation_record_id
- escalation_scope
- escalation_code
- escalation_status
- escalation_reason
- target_scope
- source_case_id
- source_state_version
- correlation_id
- causation_id
- escalated_at
- resolved_at
- created_at
- updated_at

escalation_status_enum:
- active
- resolved
- dismissed
- archived

truth_boundary:
Escalation records are canonical governance control truth.
