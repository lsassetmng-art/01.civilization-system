# ============================================================
# CIVILIZATION MAINTENANCE BACKLOG MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical maintenance backlog model.

model_type:
- operational backlog model

primary_key:
- maintenance_backlog_id

natural_key:
- backlog_scope
- backlog_ref

fields:
- maintenance_backlog_id
- backlog_scope
- backlog_ref
- backlog_status
- target_facility_code
- priority_class
- source_state_version
- enqueued_at
- released_at
- created_at
- updated_at

backlog_status_enum:
- queued
- active
- released
- expired
- cancelled
- archived

truth_boundary:
Maintenance backlog truth belongs to CivilizationOS operational backlog domain.
