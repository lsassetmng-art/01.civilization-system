# ============================================================
# CIVILIZATION WASTE STREAM MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical waste stream model.

model_type:
- environmental operations truth model

primary_key:
- waste_stream_id

natural_key:
- waste_scope
- waste_code
- waste_window

fields:
- waste_stream_id
- waste_scope
- waste_code
- waste_window
- waste_status
- waste_class
- quantity_value
- source_lineage
- source_state_version
- recorded_at
- created_at
- updated_at

waste_status_enum:
- current
- constrained
- overflow
- corrected
- archived

truth_boundary:
Waste-stream truth belongs to CivilizationOS environment-circularity domain.
