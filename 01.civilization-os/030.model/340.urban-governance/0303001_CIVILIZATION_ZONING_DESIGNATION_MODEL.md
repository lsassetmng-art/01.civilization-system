# ============================================================
# CIVILIZATION ZONING DESIGNATION MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical zoning designation model.

model_type:
- land-use control truth model

primary_key:
- zoning_designation_id

natural_key:
- zone_scope
- zone_code
- zone_version

fields:
- zoning_designation_id
- zone_scope
- zone_code
- zone_version
- zone_status
- territory_scope
- zoning_class
- permitted_use_summary
- effective_from
- effective_until
- created_at
- updated_at

zone_status_enum:
- draft
- approved
- active
- superseded
- revoked
- expired
- archived

contract_version_rule:
Zoning designations must expose explicit version semantics.

truth_boundary:
Zoning-designation truth belongs to CivilizationOS urban-governance domain.
