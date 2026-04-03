# ============================================================
# CIVILIZATION WATER QUALITY RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical water quality record model.

model_type:
- environmental quality truth model

primary_key:
- water_quality_record_id

natural_key:
- quality_scope
- quality_ref
- quality_window

fields:
- water_quality_record_id
- quality_scope
- quality_ref
- quality_window
- quality_status
- quality_grade
- measured_summary
- source_lineage
- source_state_version
- measured_at
- created_at
- updated_at

quality_status_enum:
- current
- degraded
- unsafe
- restored
- archived

truth_boundary:
Water-quality truth belongs to CivilizationOS environment-circularity domain.
