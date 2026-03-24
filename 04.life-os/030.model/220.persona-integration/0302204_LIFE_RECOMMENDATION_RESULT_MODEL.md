# ============================================================
# LIFE RECOMMENDATION RESULT MODEL
# ============================================================

status: canonical
layer: 030.model
system: life-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical life recommendation result model.

model_type:
- recommendation result truth model

primary_key:
- life_recommendation_result_id

natural_key:
- result_scope
- result_ref
- correlation_id

fields:
- life_recommendation_result_id
- result_scope
- result_ref
- correlation_id
- result_status
- persona_id
- recommendation_summary
- source_state_version
- issued_at
- created_at
- updated_at

result_status_enum:
- issued
- accepted
- ignored
- revised
- archived

truth_boundary:
Life recommendation result truth belongs to LifeOS persona-integration domain.
