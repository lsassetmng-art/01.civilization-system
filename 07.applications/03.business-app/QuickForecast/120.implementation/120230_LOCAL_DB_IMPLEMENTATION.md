# ============================================================
# LOCAL DB IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines local DB / persistence implementation direction.

persistence_goals:
- keep drafts safe locally
- support interrupted work
- support later resume
- support explicit state tracking
- preserve draft continuity during external failure

recommended_local_entities:
- forecast_draft_entity
- forecast_signal_entity
- forecast_scenario_entity
- action_idea_entity
- proposal_draft_entity
- profit_preview_entity
- profit_assumption_entity
- sync_state_entity
- approval_request_cache_entity
- approval_event_cache_entity
- share_target_cache_entity
- erp_handoff_cache_entity
- history_entry_entity
- settings_entity

rules:
- local save success does not imply enterprise acceptance
- cache of Pro-linked state must remain explicitly marked
- local entity model may differ from canonical doc model if mapping is clear
