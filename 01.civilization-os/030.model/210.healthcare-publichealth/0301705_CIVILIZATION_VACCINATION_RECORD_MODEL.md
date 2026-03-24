# ============================================================
# CIVILIZATION VACCINATION RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical vaccination record model.

model_type:
- public health protection truth model

primary_key:
- vaccination_record_id

natural_key:
- vaccination_scope
- vaccination_ref

fields:
- vaccination_record_id
- vaccination_scope
- vaccination_ref
- vaccination_status
- recipient_scope
- vaccine_code
- dose_sequence
- source_state_version
- recorded_at
- created_at
- updated_at

vaccination_status_enum:
- scheduled
- administered
- deferred
- invalidated
- archived

truth_boundary:
Vaccination truth belongs to CivilizationOS healthcare-publichealth domain.
