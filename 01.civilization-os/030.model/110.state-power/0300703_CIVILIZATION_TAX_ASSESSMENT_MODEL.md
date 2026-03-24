# ============================================================
# CIVILIZATION TAX ASSESSMENT MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical tax assessment model.

model_type:
- fiscal truth model

primary_key:
- tax_assessment_id

natural_key:
- assessment_scope
- assessment_ref

fields:
- tax_assessment_id
- assessment_scope
- assessment_ref
- assessment_status
- tax_code
- assessed_amount
- source_state_version
- correlation_id
- assessed_at
- created_at
- updated_at

assessment_status_enum:
- draft
- assessed
- disputed
- finalized
- cancelled

truth_boundary:
Tax assessment truth belongs to CivilizationOS fiscal domain.
