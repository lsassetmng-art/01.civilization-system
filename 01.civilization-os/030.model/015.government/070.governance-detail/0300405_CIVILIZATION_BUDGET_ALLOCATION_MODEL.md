# ============================================================
# CIVILIZATION BUDGET ALLOCATION MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical budget allocation model.

model_type:
- governance finance model

primary_key:
- budget_allocation_id

natural_key:
- nation_id
- budget_scope
- budget_window

fields:
- budget_allocation_id
- nation_id
- budget_scope
- budget_window
- allocation_status
- allocated_amount
- approved_amount
- source_decision_id
- source_state_version
- created_at
- updated_at

allocation_status_enum:
- draft
- approved
- active
- exhausted
- superseded
- cancelled

truth_boundary:
Budget allocation truth belongs to CivilizationOS governance finance domain.
