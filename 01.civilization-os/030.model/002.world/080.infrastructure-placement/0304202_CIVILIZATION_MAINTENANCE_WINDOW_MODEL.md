# ============================================================
# CIVILIZATION MAINTENANCE WINDOW MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical maintenance window model.

model_type:
- service maintenance truth model

primary_key:
- maintenance_window_id

natural_key:
- window_scope
- window_code
- window_version

fields:
- maintenance_window_id
- window_scope
- window_code
- window_version
- window_status
- target_service_scope
- maintenance_summary
- effective_from
- effective_until
- created_at
- updated_at

window_status_enum:
- planned
- active
- completed
- cancelled
- archived

contract_version_rule:
Maintenance windows must expose explicit version semantics.

truth_boundary:
Maintenance-window truth belongs to CivilizationOS infrastructure-resilience domain.
