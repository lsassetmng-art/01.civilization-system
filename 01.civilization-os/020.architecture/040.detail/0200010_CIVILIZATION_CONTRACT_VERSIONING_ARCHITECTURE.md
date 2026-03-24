# ============================================================
# CIVILIZATION CONTRACT VERSIONING ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define architecture rules for contract versioning and compatibility.

required_fields:
- contract_version
- source_state_version where relevant
- compatibility_status where relevant

compatibility_status_enum:
- compatible
- limited
- incompatible

rules:
- incompatible contracts must be rejected or isolated
- limited compatibility must be explicit
- migrations must remain traceable
- consumers must not guess missing version semantics
