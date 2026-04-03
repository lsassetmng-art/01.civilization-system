# ============================================================
# CIVILIZATION CIVIC SERVICE CASE MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical civic service case model.

model_type:
- administrative service model

primary_key:
- civic_service_case_id

natural_key:
- case_scope
- case_ref
- correlation_id

fields:
- civic_service_case_id
- case_scope
- case_ref
- case_status
- service_type
- requester_scope
- target_scope
- source_request_id
- correlation_id
- causation_id
- opened_at
- closed_at
- created_at
- updated_at

case_status_enum:
- opened
- under_review
- actionable
- resolved
- rejected
- archived

truth_boundary:
Civic service case truth belongs to CivilizationOS civic administration domain.
