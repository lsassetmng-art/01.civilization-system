# ============================================================
# CIVILIZATION COURT DECISION RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical court decision record model.

model_type:
- judicial decision model

primary_key:
- court_decision_record_id

natural_key:
- judicial_case_id
- decision_code

fields:
- court_decision_record_id
- judicial_case_id
- decision_code
- decision_status
- decision_basis
- deciding_identity
- source_state_version
- correlation_id
- decided_at
- created_at
- updated_at

decision_status_enum:
- issued
- effective
- superseded
- revoked
- archived

truth_boundary:
Court decision truth belongs to CivilizationOS judicial domain.
