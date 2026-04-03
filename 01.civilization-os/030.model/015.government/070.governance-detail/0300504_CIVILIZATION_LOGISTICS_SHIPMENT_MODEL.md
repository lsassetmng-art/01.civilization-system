# ============================================================
# CIVILIZATION LOGISTICS SHIPMENT MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical logistics shipment model.

model_type:
- shipment operational truth model

primary_key:
- logistics_shipment_id

natural_key:
- shipment_ref
- route_code

fields:
- logistics_shipment_id
- shipment_ref
- route_code
- shipment_status
- shipment_scope
- payload_summary
- payload_hash
- source_state_version
- correlation_id
- dispatched_at
- delivered_at
- created_at
- updated_at

shipment_status_enum:
- pending
- dispatched
- in_transit
- delivered
- failed
- cancelled

idempotency_rule:
shipment_ref + route_code must suppress duplicate effective shipment registration.

truth_boundary:
Shipment truth belongs to CivilizationOS operational logistics domain.
