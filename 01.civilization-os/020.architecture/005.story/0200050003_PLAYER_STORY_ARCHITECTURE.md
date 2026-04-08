# ============================================================
# PLAYER STORY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: story
subdomain: player-story
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines player-level story architecture.

scope:
Covers onboarding story, role-development story,
career story, life-event-linked story,
and player progression narrative context.

design_intent:
Player story gives structured meaning to player progression
without replacing player identity, permissions, or actual state records.

canonical_rules:
- Player story must bind to player scope.
- Player story must not replace player identity truth.
- Player story must define progression stage clearly.
- Player story branches must remain condition-bound and auditable.

required_behavior:
- Support onboarding story.
- Support role/career story.
- Support life-event-linked story.
- Support guided progression and replay-safe history.

state_model:
player_story_class:
- onboarding_story
- role_story
- career_story
- life_event_story
- replay_story

validation_rules:
- player_ref is required.
- active player story must declare current stage.
- replay story must not be mistaken for active live progression.
- mutually exclusive primary onboarding stories in same scope are prohibited.

transition_rules:
- planned -> active
- active -> paused
- active -> completed
- active -> cancelled
- completed -> historical
- historical -> replay_only

actor_matrix:
- player -> may observe own allowed story context
- system guide -> may drive onboarding story progression
- operator -> may inspect authorized progression
- auditor -> may inspect historical story chain

failure_codes:
- PLAYER_STORY_REF_MISSING
- PLAYER_STORY_STAGE_INVALID
- PLAYER_STORY_ONBOARDING_CONFLICT
- PLAYER_STORY_REPLAY_SCOPE_CONFLICT

example_scenarios:
- A new player progresses through onboarding_story toward stable participation.
- A worker player follows a career_story with stage-based role development.
