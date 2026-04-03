# ============================================================
# CIVILIZATION SPECIFICATION RELEASE MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical specification release model.

model_type:
- technical release truth model

primary_key:
- specification_release_id

natural_key:
- release_scope
- release_code
- release_version

fields:
- specification_release_id
- release_scope
- release_code
- release_version
- release_status
- source_standard_code
- release_payload_hash
- compatibility_status
- created_at
- updated_at

release_status_enum:
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
Specification releases must expose explicit version semantics.

truth_boundary:
Specification-release truth belongs to CivilizationOS technology-governance domain.
