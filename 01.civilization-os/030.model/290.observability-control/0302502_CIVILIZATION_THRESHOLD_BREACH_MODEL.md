# ============================================================
# CIVILIZATION THRESHOLD BREACH MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical threshold breach model.

model_type:
- alert condition truth model

primary_key:
- threshold_breach_id

natural_key:
- breach_scope
- breach_ref
- correlation_id

fields:
- threshold_breach_id
- breach_scope
- breach_ref
- breach_status
- kpi_code
- breach_level
- observed_value
- threshold_snapshot
- source_state_version
- correlation_id
- detected_at
- created_at
- updated_at

breach_status_enum:
- active
- acknowledged
- mitigated
- cleared
- archived

truth_boundary:
Threshold-breach truth belongs to CivilizationOS observability-control domain.
