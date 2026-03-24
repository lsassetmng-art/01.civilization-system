# ============================================================
# CIVILIZATION LOGISTICS ROUTE MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical logistics route model.

model_type:
- route truth model

primary_key:
- logistics_route_id

natural_key:
- route_code
- source_territory_code
- target_territory_code

fields:
- logistics_route_id
- route_code
- source_territory_code
- target_territory_code
- route_status
- route_class
- legal_basis_ref
- effective_from
- effective_until
- created_at
- updated_at

route_status_enum:
- active
- restricted
- blocked
- revoked
- expired

truth_boundary:
Logistics route truth belongs to CivilizationOS operational logistics domain.
