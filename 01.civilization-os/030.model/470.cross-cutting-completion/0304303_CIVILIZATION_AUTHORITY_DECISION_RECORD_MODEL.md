# ============================================================
# CIVILIZATION AUTHORITY DECISION RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical authority decision record model.

model_type:
- authority trace truth model

primary_key:
- authority_decision_record_id

natural_key:
- decision_scope
- decision_ref
- correlation_id

fields:
- authority_decision_record_id
- decision_scope
- decision_ref
- correlation_id
- decision_status
- deciding_scope
- decision_summary
- authority_basis
- source_state_version
- decided_at
- created_at
- updated_at

decision_status_enum:
- proposed
- approved
- rejected
- executed
- superseded
- archived

truth_boundary:
Authority-decision truth belongs to CivilizationOS cross-cutting-completion domain.
