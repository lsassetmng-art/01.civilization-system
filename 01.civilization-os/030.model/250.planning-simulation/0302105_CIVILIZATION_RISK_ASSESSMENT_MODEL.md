# ============================================================
# CIVILIZATION RISK ASSESSMENT MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical risk assessment model.

model_type:
- risk truth model

primary_key:
- risk_assessment_id

natural_key:
- assessment_scope
- assessment_ref
- correlation_id

fields:
- risk_assessment_id
- assessment_scope
- assessment_ref
- assessment_status
- risk_class
- target_scope
- severity_level
- source_lineage
- source_state_version
- assessed_at
- created_at
- updated_at

assessment_status_enum:
- pending
- active
- mitigated
- superseded
- archived

truth_boundary:
Risk-assessment truth belongs to CivilizationOS planning-simulation domain.
