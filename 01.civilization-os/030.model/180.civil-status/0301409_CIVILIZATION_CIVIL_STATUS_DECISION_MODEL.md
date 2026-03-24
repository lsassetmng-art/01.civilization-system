# ============================================================
# CIVILIZATION CIVIL STATUS DECISION MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical civil status decision model.

model_type:
- civil governance decision model

primary_key:
- civil_status_decision_id

natural_key:
- decision_scope
- decision_code
- correlation_id

fields:
- civil_status_decision_id
- decision_scope
- decision_code
- decision_status
- decision_type
- target_scope
- decision_basis
- source_state_version
- correlation_id
- decided_at
- created_at
- updated_at

decision_status_enum:
- proposed
- approved
- rejected
- superseded
- archived

truth_boundary:
Civil-status decision truth belongs to CivilizationOS civil-status governance domain.
