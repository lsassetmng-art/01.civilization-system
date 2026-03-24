# ============================================================
# CIVILIZATION MODEL VERSIONING RULE
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define version semantics for CivilizationOS models.

required_when_applicable:
- contract_version
- source_state_version
- schema_revision
- compatibility_status

versioning_rule:
- externally synchronized contracts must carry explicit version semantics
- derived state should preserve source version lineage where relevant
- compatibility decisions must be inspectable
