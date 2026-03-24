# ============================================================
# CIVILIZATION SUBSIDY ALLOCATION MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical subsidy allocation model.

model_type:
- fiscal support model

primary_key:
- subsidy_allocation_id

natural_key:
- subsidy_scope
- subsidy_ref

fields:
- subsidy_allocation_id
- subsidy_scope
- subsidy_ref
- allocation_status
- subsidy_type
- recipient_scope
- allocated_value
- source_decision_id
- source_state_version
- allocated_at
- created_at
- updated_at

allocation_status_enum:
- draft
- approved
- allocated
- delivered
- failed
- reversed
- archived

truth_boundary:
Subsidy allocation truth belongs to CivilizationOS finance-credit domain.
