# ============================================================
# CIVILIZATION CARE ASSIGNMENT MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical care assignment model.

model_type:
- care staffing truth model

primary_key:
- care_assignment_id

natural_key:
- assignment_scope
- assignment_ref

fields:
- care_assignment_id
- assignment_scope
- assignment_ref
- assignment_status
- caregiver_scope
- patient_scope
- facility_code
- source_state_version
- effective_from
- effective_until
- created_at
- updated_at

assignment_status_enum:
- planned
- active
- suspended
- completed
- cancelled
- archived

truth_boundary:
Care-assignment truth belongs to CivilizationOS healthcare-publichealth domain.
