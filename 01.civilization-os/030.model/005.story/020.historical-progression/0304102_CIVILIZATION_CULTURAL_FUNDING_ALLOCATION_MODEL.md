# ============================================================
# CIVILIZATION CULTURAL FUNDING ALLOCATION MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical cultural funding allocation model.

model_type:
- culture support truth model

primary_key:
- cultural_funding_allocation_id

natural_key:
- allocation_scope
- allocation_ref
- recipient_scope

fields:
- cultural_funding_allocation_id
- allocation_scope
- allocation_ref
- recipient_scope
- allocation_status
- allocated_value
- source_state_version
- allocated_at
- created_at
- updated_at

allocation_status_enum:
- pending
- approved
- allocated
- failed
- reversed
- archived

idempotency_rule:
allocation_scope + allocation_ref must suppress duplicate effective funding allocation.

truth_boundary:
Cultural-funding truth belongs to CivilizationOS culture-tourism domain.
