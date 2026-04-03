# ============================================================
# CIVILIZATION TARIFF ASSESSMENT MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical tariff assessment model.

model_type:
- trade taxation truth model

primary_key:
- tariff_assessment_id

natural_key:
- assessment_scope
- assessment_ref
- declaration_ref

fields:
- tariff_assessment_id
- assessment_scope
- assessment_ref
- declaration_ref
- assessment_status
- tariff_code
- assessed_value
- currency_code
- source_state_version
- assessed_at
- created_at
- updated_at

assessment_status_enum:
- draft
- assessed
- disputed
- finalized
- cancelled
- archived

truth_boundary:
Tariff-assessment truth belongs to CivilizationOS external-trade-aid domain.
