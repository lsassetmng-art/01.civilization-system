# ============================================================
# CITIZENSHIP ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Citizenship defines the formal legal relationship between a person and a nation.

purpose:
- determine civil belonging
- control legal rights and obligations
- connect person, nation, law, loyalty, and public participation

core_attributes:
- citizenship_id
- actor_id
- nation_id
- citizenship_status
- acquired_at
- revoked_at
- residency_basis
- civic_rights_profile

citizenship_status:
- none
- resident
- provisional_citizen
- full_citizen
- suspended
- revoked

rights_scope:
- residence_right
- labor_right
- voting_right
- office_eligibility
- welfare_access
- military_duty_eligibility

rules:
- citizenship is not identical to immigration
- immigration may precede citizenship, but does not imply it
- citizenship changes require explicit legal and administrative events
- citizenship status must not be mutated silently by economy or UI flows

event_flow:
- citizenship_application_created
- citizenship_review_requested
- citizenship_granted
- citizenship_suspended
- citizenship_revoked
- civic_rights_recalculated

integration_points:
- law
- election
- public_office
- loyalty
- taxation
- military eligibility

constitution_alignment:
- explicit legal transition only
- no hidden identity reassignment
- auditable status lifecycle

final_rule:
Citizenship must be created, changed, suspended, or revoked
only through explicit legal events.
