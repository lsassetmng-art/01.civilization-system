# ============================================================
# CIVILIZATION REFERENCE IMPLEMENTATION MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical reference implementation model.

model_type:
- technical realization truth model

primary_key:
- reference_implementation_id

natural_key:
- implementation_scope
- implementation_code
- implementation_version

fields:
- reference_implementation_id
- implementation_scope
- implementation_code
- implementation_version
- implementation_status
- source_specification_code
- compatibility_status
- implementation_hash
- created_at
- updated_at

implementation_status_enum:
- draft
- approved
- published
- superseded
- revoked
- archived

compatibility_status_enum:
- compatible
- limited
- incompatible

contract_version_rule:
Reference implementations must expose explicit version semantics.

truth_boundary:
Reference-implementation truth belongs to CivilizationOS technology-governance domain.
