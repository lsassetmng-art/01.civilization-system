# ============================================================
# CIVILIZATION NETWORK REROUTE ACTION MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical network reroute action model.

model_type:
- network control truth model

primary_key:
- network_reroute_action_id

natural_key:
- action_scope
- action_ref
- target_service_scope

fields:
- network_reroute_action_id
- action_scope
- action_ref
- target_service_scope
- action_status
- reroute_summary
- source_state_version
- acted_at
- created_at
- updated_at

action_status_enum:
- proposed
- active
- completed
- failed
- reversed
- archived

idempotency_rule:
action_scope + action_ref must suppress duplicate effective reroute action.

truth_boundary:
Network-reroute truth belongs to CivilizationOS infrastructure-resilience domain.
