# ============================================================
# CIVILIZATION TRANSPORT CORRIDOR MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical transport corridor model.

model_type:
- transport truth model

primary_key:
- transport_corridor_id

natural_key:
- corridor_code
- source_territory_code
- target_territory_code

fields:
- transport_corridor_id
- corridor_code
- source_territory_code
- target_territory_code
- corridor_status
- corridor_class
- legal_basis_ref
- effective_from
- effective_until
- created_at
- updated_at

corridor_status_enum:
- active
- restricted
- blocked
- revoked
- expired

truth_boundary:
Transport corridor truth belongs to CivilizationOS transport domain.
