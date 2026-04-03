# ============================================================
# CIVILIZATION INFRASTRUCTURE MAINTENANCE RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical infrastructure maintenance record model.

model_type:
- infrastructure operational truth model

primary_key:
- infrastructure_maintenance_record_id

natural_key:
- facility_code
- maintenance_ref

fields:
- infrastructure_maintenance_record_id
- facility_code
- maintenance_ref
- maintenance_status
- maintenance_scope
- work_summary
- source_state_version
- correlation_id
- scheduled_at
- completed_at
- created_at
- updated_at

maintenance_status_enum:
- planned
- approved
- in_progress
- completed
- failed
- cancelled

truth_boundary:
Infrastructure maintenance truth belongs to CivilizationOS infrastructure operations.
