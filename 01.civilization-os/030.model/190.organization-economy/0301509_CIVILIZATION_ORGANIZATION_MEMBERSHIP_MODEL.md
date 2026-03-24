# ============================================================
# CIVILIZATION ORGANIZATION MEMBERSHIP MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical organization membership model.

model_type:
- membership truth model

primary_key:
- organization_membership_id

natural_key:
- organization_code
- member_scope
- membership_ref

fields:
- organization_membership_id
- organization_code
- member_scope
- membership_ref
- membership_status
- membership_role
- effective_from
- effective_until
- created_at
- updated_at

membership_status_enum:
- active
- suspended
- ended
- expired
- archived

truth_boundary:
Organization membership truth belongs to CivilizationOS organization-economy domain.
