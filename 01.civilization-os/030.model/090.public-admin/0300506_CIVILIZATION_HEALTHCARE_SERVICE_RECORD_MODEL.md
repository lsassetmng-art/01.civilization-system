# ============================================================
# CIVILIZATION HEALTHCARE SERVICE RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical healthcare service record model.

model_type:
- public service operational model

primary_key:
- healthcare_service_record_id

natural_key:
- service_scope
- service_ref
- correlation_id

fields:
- healthcare_service_record_id
- service_scope
- service_ref
- service_status
- facility_code
- target_population_scope
- service_summary
- source_state_version
- correlation_id
- provided_at
- created_at
- updated_at

service_status_enum:
- planned
- active
- completed
- failed
- cancelled

truth_boundary:
Healthcare service record truth belongs to CivilizationOS public service operations.
