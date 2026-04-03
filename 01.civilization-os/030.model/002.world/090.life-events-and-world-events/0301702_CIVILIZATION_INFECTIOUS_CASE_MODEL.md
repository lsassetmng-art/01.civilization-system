# ============================================================
# CIVILIZATION INFECTIOUS CASE MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical infectious case model.

model_type:
- public health incident truth model

primary_key:
- infectious_case_id

natural_key:
- case_scope
- case_ref
- correlation_id

fields:
- infectious_case_id
- case_scope
- case_ref
- case_status
- disease_code
- affected_scope
- severity_class
- source_state_version
- correlation_id
- reported_at
- resolved_at
- created_at
- updated_at

case_status_enum:
- reported
- confirmed
- contained
- resolved
- archived

truth_boundary:
Infectious-case truth belongs to CivilizationOS healthcare-publichealth domain.
