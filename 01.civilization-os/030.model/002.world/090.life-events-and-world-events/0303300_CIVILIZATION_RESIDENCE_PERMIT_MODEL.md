# ============================================================
# CIVILIZATION RESIDENCE PERMIT MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical residence permit model.

model_type:
- residency permission truth model

primary_key:
- residence_permit_id

natural_key:
- permit_scope
- permit_code
- permit_version

fields:
- residence_permit_id
- permit_scope
- permit_code
- permit_version
- permit_status
- holder_scope
- host_nation_scope
- residence_class
- effective_from
- effective_until
- created_at
- updated_at

permit_status_enum:
- draft
- approved
- active
- suspended
- revoked
- expired
- archived

contract_version_rule:
Residence permits must expose explicit version semantics.

truth_boundary:
Residence-permit truth belongs to CivilizationOS migration-nationality domain.
