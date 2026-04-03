# ============================================================
# CIVILIZATION CROSS BORDER SHIPMENT CONTROL MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical cross-border shipment control model.

model_type:
- border execution truth model

primary_key:
- cross_border_shipment_control_id

natural_key:
- control_scope
- control_ref
- shipment_ref

fields:
- cross_border_shipment_control_id
- control_scope
- control_ref
- shipment_ref
- control_status
- source_permit_code
- border_action_summary
- source_state_version
- correlation_id
- acted_at
- created_at
- updated_at

control_status_enum:
- pending
- cleared
- held
- blocked
- released
- archived

truth_boundary:
Cross-border shipment control truth belongs to CivilizationOS external-trade-aid domain.
