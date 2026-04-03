# ============================================================
# CIVILIZATION DISPUTE CASE MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical dispute case model.

model_type:
- dispute truth model

primary_key:
- dispute_case_id

natural_key:
- dispute_scope
- dispute_ref
- correlation_id

fields:
- dispute_case_id
- dispute_scope
- dispute_ref
- dispute_status
- dispute_type
- claimant_scope
- respondent_scope
- dispute_summary
- source_state_version
- correlation_id
- opened_at
- closed_at
- created_at
- updated_at

dispute_status_enum:
- filed
- under_review
- actionable
- settled
- dismissed
- archived

truth_boundary:
Dispute-case truth belongs to CivilizationOS dispute-resolution domain.
