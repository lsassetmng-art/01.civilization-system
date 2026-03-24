# ============================================================
# CIVILIZATION VERSIONING CONSTITUTION
# ============================================================

status: canonical
layer: 010.constitution
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define constitutional requirements for versioned contracts,
state compatibility, and canonical evolution.

constitutional_rules:
- externally synchronized contracts require explicit version semantics
- incompatible versions must not be silently accepted
- canonical evolution must preserve auditability
- version upgrades must not erase prior traceability

required_markers:
- contract_version
- source_state_version where relevant
- compatibility classification
- migration trace where relevant
