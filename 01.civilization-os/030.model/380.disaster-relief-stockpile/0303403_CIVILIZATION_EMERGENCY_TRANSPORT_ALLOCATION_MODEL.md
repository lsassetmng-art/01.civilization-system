# ============================================================
# CIVILIZATION EMERGENCY TRANSPORT ALLOCATION MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical emergency transport allocation model.

model_type:
- disaster logistics truth model

primary_key:
- emergency_transport_allocation_id

natural_key:
- allocation_scope
- allocation_ref
- target_route_ref

fields:
- emergency_transport_allocation_id
- allocation_scope
- allocation_ref
- target_route_ref
- allocation_status
- asset_summary
- source_state_version
- allocated_at
- created_at
- updated_at

allocation_status_enum:
- planned
- active
- completed
- failed
- cancelled
- archived

truth_boundary:
Emergency-transport allocation truth belongs to CivilizationOS disaster-relief-stockpile domain.
