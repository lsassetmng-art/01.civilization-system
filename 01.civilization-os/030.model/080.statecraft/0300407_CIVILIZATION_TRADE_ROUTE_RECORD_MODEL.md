# ============================================================
# CIVILIZATION TRADE ROUTE RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical trade route record model.

model_type:
- domain relation model

primary_key:
- trade_route_record_id

natural_key:
- route_code
- source_nation_id
- target_nation_id

fields:
- trade_route_record_id
- route_code
- source_nation_id
- target_nation_id
- route_status
- route_scope
- legal_basis_ref
- effective_from
- effective_until
- created_at
- updated_at

route_status_enum:
- active
- suspended
- blocked
- revoked
- expired

truth_boundary:
Trade route truth belongs to CivilizationOS governed inter-nation domain.
