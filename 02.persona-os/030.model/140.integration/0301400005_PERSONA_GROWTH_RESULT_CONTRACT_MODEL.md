# ============================================================
# PERSONA GROWTH RESULT CONTRACT MODEL
# ============================================================

status: canonical
layer: model
domain: integration
system: persona-os
owner: Boss
prepared_by: Zero

model_name: persona_growth_result_contract

purpose:
Defines the canonical result payload model
emitted after PersonaOS applies a growth request.

core_fields:
persona_growth_result_contract_id
request_id
persona_id
growth_dimension
previous_value
new_value
growth_version
result_state
applied_at
created_at
updated_at

rules:
Growth result contracts must remain explicit and traceable
to canonical PersonaOS growth application.
