# ============================================================
# PLAYER PROGRESS ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: player
subdomain: player-progress
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines player progression architecture.

scope:
Covers onboarding progression, capability progression,
role progression, bounded advancement,
and historical progression inspection.

design_intent:
Player progress must be explicit and canonical,
not hidden inside story text or ad hoc unlock flags.

canonical_rules:
- Progress stage must be explicit.
- Progress stage must remain distinct from role.
- Progress transitions must be traceable.
- Historical progress must remain queryable.
- Progress restrictions must be enforceable.

required_behavior:
- Support onboarding progression.
- Support standard progression.
- Support advanced progression.
- Support restricted progression.
- Support history-safe progression replay.

state_model:
player_progress_stage:
- new
- onboarding
- standard
- advanced
- restricted
- historical

validation_rules:
- progress_stage is required.
- current stage must be valid for active player.
- historical stage must not act as current live stage.
- restricted stage must not expose advanced capabilities silently.

transition_rules:
- new -> onboarding
- onboarding -> standard
- standard -> advanced
- advanced -> restricted
- restricted -> standard
- advanced -> historical

failure_codes:
- PLAYER_PROGRESS_STAGE_MISSING
- PLAYER_PROGRESS_STAGE_INVALID
- PLAYER_PROGRESS_CURRENT_HISTORY_CONFLICT
- PLAYER_PROGRESS_RESTRICTED_SCOPE_CONFLICT

example_scenarios:
- A new player moves from onboarding to standard participation.
- A previously advanced player becomes restricted after a governance action.
