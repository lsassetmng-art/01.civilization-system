# ============================================================
# CIVILIZATION SCREENING RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical screening record model.

model_type:
- preventive care truth model

primary_key:
- screening_record_id

natural_key:
- screening_scope
- screening_ref

fields:
- screening_record_id
- screening_scope
- screening_ref
- screening_status
- recipient_scope
- screening_code
- result_summary
- source_state_version
- recorded_at
- created_at
- updated_at

screening_status_enum:
- scheduled
- completed
- followup_required
- invalidated
- archived

truth_boundary:
Screening truth belongs to CivilizationOS healthcare-publichealth domain.
