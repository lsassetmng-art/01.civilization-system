# ============================================================
# LOCAL ENTITY MAPPING MODEL
# ============================================================

status: canonical
layer: model
application: QuickForecast
model: local_entity_mapping
owner: Boss
prepared_by: Zero

purpose:
Defines mapping intent between canonical models and local entities.

mapping_targets:
- forecast_draft -> forecast_draft_entity
- forecast_signal -> forecast_signal_entity
- forecast_scenario -> forecast_scenario_entity
- action_idea -> action_idea_entity
- proposal_draft -> proposal_draft_entity
- profit_preview -> profit_preview_entity
- profit_assumption -> profit_assumption_entity
- sync_state -> sync_state_entity
- approval_request -> approval_request_cache_entity
- approval_event -> approval_event_cache_entity
- share_target -> share_target_cache_entity
- erp_handoff -> erp_handoff_cache_entity
- history_entry -> history_entry_entity

rules:
- mapping must preserve identity
- mapping must preserve state meaning
- cache entities must remain distinguishable from authority records
