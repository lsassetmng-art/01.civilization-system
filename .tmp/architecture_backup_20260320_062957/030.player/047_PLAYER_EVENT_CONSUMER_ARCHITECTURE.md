# ============================================================
# PLAYER EVENT CONSUMER ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Player event consumer receives and interprets player-relevant events.

purpose:
- route incoming events into player-visible consequences
- trigger recalculation without direct mutation
- connect runtime and player state

input_events:
- exam_result_published
- job_result_published
- health_change_event
- law_effect_event
- war_impact_event
- relationship_event

outputs:
- player_context_recalculated
- player_notification_requested
- state_transition_requested
- downstream_domain_event_requested

rules:
- consumer does not mutate state directly
- consumer translates events into explicit downstream events
- missing event handlers must fail closed and log

constitution_alignment:
- event-only processing
- no direct update path

final_rule:
The player event consumer may route and transform events,
but it may not directly mutate player state.
