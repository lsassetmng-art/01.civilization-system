# ============================================================
# LOCAL ENTITY SET INFRASTRUCTURE
# ============================================================

status: canonical
layer: infrastructure
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the intended local entity set for QuickForecast local persistence.

core_entities:
- forecast_draft_entity
- forecast_signal_entity
- forecast_scenario_entity
- action_idea_entity
- proposal_draft_entity
- profit_preview_entity
- profit_assumption_entity

support_entities:
- sync_state_entity
- approval_request_cache_entity
- approval_event_cache_entity
- share_target_cache_entity
- erp_handoff_cache_entity
- history_entry_entity
- settings_entity

principles:
- one clear identity per entity
- source draft entities and support cache entities must remain distinguishable
- entities should support quick resume and partial-save behavior
