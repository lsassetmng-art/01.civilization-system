# ============================================================
# WORLD STORY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: story
subdomain: world-story
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines world-level story architecture.

scope:
Covers story structures that affect world regions,
states, cities, institutions, civilizations,
and world-scale narrative context.

design_intent:
World story gives large-scale continuity and stage meaning
to civilization-wide or region-wide developments.

canonical_rules:
- World story must bind to canonical world scope.
- World story must not replace world state truth.
- World story must define public-safe and internal narrative implications where relevant.
- World story stages must remain historically traceable.

required_behavior:
- Support regional story.
- Support civilization-wide story.
- Support event-amplified world story.
- Support public-safe story exposure and internal richer interpretation.

state_model:
world_story_class:
- region_story
- city_story
- nation_story
- civilization_story
- event_world_story

validation_rules:
- world_ref or equivalent canonical world scope is required.
- active world story must have valid current stage.
- conflicting primary world stories within the same narrow scope require resolution basis.

transition_rules:
- planned -> active
- active -> paused
- active -> completed
- active -> cancelled
- completed -> historical

consumer_matrix:
- public -> public-safe world story summary
- resident/player -> applicable world story context
- internal operator -> richer world story stage context
- auditor -> historical world story replay

failure_codes:
- WORLD_STORY_SCOPE_MISSING
- WORLD_STORY_STAGE_INVALID
- WORLD_STORY_PRIMARY_CONFLICT
- WORLD_STORY_HISTORY_TRACE_MISSING

example_scenarios:
- A capital city enters a reconstruction storyline after major disruption.
- A civilization-wide festival storyline influences multiple regions simultaneously.
