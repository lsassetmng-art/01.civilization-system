# ============================================================
# CIVILIZATION DISPUTE EVIDENCE RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical dispute evidence record model.

model_type:
- evidence truth model

primary_key:
- dispute_evidence_record_id

natural_key:
- evidence_scope
- evidence_ref
- correlation_id

fields:
- dispute_evidence_record_id
- evidence_scope
- evidence_ref
- evidence_status
- source_case_ref
- evidence_hash
- evidence_summary
- source_state_version
- correlation_id
- recorded_at
- created_at
- updated_at

evidence_status_enum:
- recorded
- admitted
- excluded
- superseded
- invalidated
- archived

truth_boundary:
Dispute-evidence truth belongs to CivilizationOS dispute-resolution domain.
