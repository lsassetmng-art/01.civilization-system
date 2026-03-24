# ============================================================
# CIVILIZATION SERVICE CAPACITY RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical service capacity record model.

model_type:
- capacity truth model

primary_key:
- service_capacity_record_id

natural_key:
- capacity_scope
- capacity_code
- capacity_window

fields:
- service_capacity_record_id
- capacity_scope
- capacity_code
- capacity_window
- capacity_status
- total_capacity_value
- available_capacity_value
- source_lineage
- source_state_version
- recorded_at
- created_at
- updated_at

capacity_status_enum:
- current
- constrained
- exhausted
- restored
- archived

truth_boundary:
Service capacity truth belongs to CivilizationOS service delivery domain.
