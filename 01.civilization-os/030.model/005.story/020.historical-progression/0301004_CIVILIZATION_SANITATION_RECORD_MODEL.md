# ============================================================
# CIVILIZATION SANITATION RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical sanitation record model.

model_type:
- public health operations model

primary_key:
- sanitation_record_id

natural_key:
- sanitation_scope
- sanitation_ref

fields:
- sanitation_record_id
- sanitation_scope
- sanitation_ref
- sanitation_status
- sanitation_class
- target_scope
- source_state_version
- correlation_id
- recorded_at
- created_at
- updated_at

sanitation_status_enum:
- current
- degraded
- impaired
- restored
- archived

truth_boundary:
Sanitation truth belongs to CivilizationOS public health operations.
