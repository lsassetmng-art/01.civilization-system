# ============================================================
# CIVILIZATION DEFAULT EVENT MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical default event model.

model_type:
- finance failure truth model

primary_key:
- default_event_id

natural_key:
- default_scope
- default_ref
- correlation_id

fields:
- default_event_id
- default_scope
- default_ref
- default_status
- source_obligation_ref
- default_reason
- source_state_version
- correlation_id
- occurred_at
- created_at
- updated_at

default_status_enum:
- active
- acknowledged
- restructured
- cured
- archived

truth_boundary:
Default-event truth belongs to CivilizationOS finance-credit domain.
