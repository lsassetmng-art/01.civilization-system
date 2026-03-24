# ============================================================
# CIVILIZATION COMPATIBILITY DECISION MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical compatibility decision model.

model_type:
- compatibility model

primary_key:
- compatibility_decision_id

natural_key:
- contract_domain
- contract_code
- contract_version
- target_domain

fields:
- compatibility_decision_id
- contract_domain
- contract_code
- contract_version
- target_domain
- compatibility_status
- decision_basis
- decided_by
- source_state_version
- correlation_id
- decided_at
- created_at
- updated_at

compatibility_status_enum:
- compatible
- limited
- incompatible

truth_boundary:
Compatibility decisions classify interoperability.
They do not silently rewrite contract truth.
