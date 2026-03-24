# ============================================================
# CIVILIZATION INTERFAITH MEDIATION MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical interfaith mediation model.

model_type:
- faith dispute mediation truth model

primary_key:
- interfaith_mediation_id

natural_key:
- mediation_scope
- mediation_ref
- correlation_id

fields:
- interfaith_mediation_id
- mediation_scope
- mediation_ref
- correlation_id
- mediation_status
- party_summary
- mediator_scope
- source_state_version
- mediated_at
- created_at
- updated_at

mediation_status_enum:
- opened
- active
- agreed
- failed
- archived

truth_boundary:
Interfaith-mediation truth belongs to CivilizationOS religion-operations domain.
