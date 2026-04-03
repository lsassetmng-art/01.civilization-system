# ============================================================
# CIVILIZATION CEASEFIRE MONITORING MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical ceasefire monitoring model.

model_type:
- conflict monitoring truth model

primary_key:
- ceasefire_monitoring_id

natural_key:
- monitoring_scope
- monitoring_ref
- correlation_id

fields:
- ceasefire_monitoring_id
- monitoring_scope
- monitoring_ref
- correlation_id
- monitoring_status
- monitored_scope
- monitoring_result
- source_state_version
- monitored_at
- created_at
- updated_at

monitoring_status_enum:
- active
- stable
- breached
- mitigated
- archived

truth_boundary:
Ceasefire-monitoring truth belongs to CivilizationOS military-operations domain.
