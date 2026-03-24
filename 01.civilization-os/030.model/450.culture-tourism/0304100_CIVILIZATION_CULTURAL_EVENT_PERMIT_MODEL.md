# ============================================================
# CIVILIZATION CULTURAL EVENT PERMIT MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical cultural event permit model.

model_type:
- culture permission truth model

primary_key:
- cultural_event_permit_id

natural_key:
- permit_scope
- permit_code
- permit_version

fields:
- cultural_event_permit_id
- permit_scope
- permit_code
- permit_version
- permit_status
- organizer_scope
- event_summary
- approval_basis
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
Cultural event permits must expose explicit version semantics.

truth_boundary:
Cultural-event permit truth belongs to CivilizationOS culture-tourism domain.
