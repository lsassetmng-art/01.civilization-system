# ============================================================
# CIVILIZATION ELIGIBILITY ASSESSMENT MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical eligibility assessment model.

model_type:
- civic decision model

primary_key:
- eligibility_assessment_id

natural_key:
- assessment_scope
- assessment_ref
- source_request_id

fields:
- eligibility_assessment_id
- assessment_scope
- assessment_ref
- source_request_id
- assessment_status
- eligibility_basis
- assessment_result
- reviewer_identity
- source_state_version
- correlation_id
- assessed_at
- created_at
- updated_at

assessment_status_enum:
- pending
- eligible
- ineligible
- waived
- superseded
- archived

truth_boundary:
Eligibility assessment truth belongs to CivilizationOS service decision domain.
