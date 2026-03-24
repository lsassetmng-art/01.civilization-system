# ============================================================
# CIVILIZATION COMPLIANCE WITH AWARD RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical compliance-with-award record model.

model_type:
- post-decision compliance truth model

primary_key:
- compliance_with_award_record_id

natural_key:
- compliance_scope
- compliance_ref
- source_award_code

fields:
- compliance_with_award_record_id
- compliance_scope
- compliance_ref
- source_award_code
- compliance_status
- compliance_summary
- source_state_version
- recorded_at
- created_at
- updated_at

compliance_status_enum:
- pending
- partial
- fulfilled
- breached
- cured
- archived

truth_boundary:
Compliance-with-award truth belongs to CivilizationOS dispute-resolution domain.
