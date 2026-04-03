# ============================================================
# CIVILIZATION MEDIATION CASE MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical mediation case model.

model_type:
- settlement process truth model

primary_key:
- mediation_case_id

natural_key:
- mediation_scope
- mediation_ref
- source_dispute_ref

fields:
- mediation_case_id
- mediation_scope
- mediation_ref
- source_dispute_ref
- mediation_status
- mediator_scope
- settlement_summary
- source_state_version
- created_at
- updated_at

mediation_status_enum:
- opened
- active
- agreed
- failed
- withdrawn
- archived

truth_boundary:
Mediation-case truth belongs to CivilizationOS dispute-resolution domain.
