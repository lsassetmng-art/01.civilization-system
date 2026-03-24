# ============================================================
# CIVILIZATION BENEFIT ALLOCATION RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical benefit allocation record model.

model_type:
- support allocation model

primary_key:
- benefit_allocation_record_id

natural_key:
- allocation_scope
- allocation_ref
- source_request_id

fields:
- benefit_allocation_record_id
- allocation_scope
- allocation_ref
- source_request_id
- allocation_status
- benefit_type
- allocated_value
- source_state_version
- correlation_id
- allocated_at
- created_at
- updated_at

allocation_status_enum:
- pending
- allocated
- delivered
- failed
- reversed
- cancelled

truth_boundary:
Benefit allocation truth belongs to CivilizationOS support allocation domain.
