# ============================================================
# PLAYER PROGRESS RUNTIME
# ============================================================

status: canonical
layer: runtime
domain: player
subdomain: player-progress
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines runtime behavior for player progression.

scope:
Covers progression-stage selection,
onboarding runtime behavior,
restricted-stage enforcement,
and historical progression replay.

runtime_rules:
- Runtime must resolve current progress stage explicitly.
- Historical stage must not be used as current live stage.
- Restricted stage must enforce reduced capability behavior.
- Onboarding stage must remain distinct from standard live progression.

required_behavior:
- Select current progress stage.
- Enforce onboarding behavior.
- Enforce restricted progression limits.
- Support historical progression replay by explicit mode.

state_model:
player_progress_runtime_state:
- new
- onboarding
- standard
- advanced
- restricted
- historical
- blocked

validation_rules:
- progress stage is required.
- invalid or unknown current stage is prohibited.
- historical stage must not be used in live mode.
- restricted stage must not silently inherit advanced capabilities.

transition_rules:
- new -> onboarding
- onboarding -> standard
- standard -> advanced
- advanced -> restricted
- restricted -> standard
- any stage -> historical in replay path

failure_codes:
- PLAYER_PROGRESS_RT_STAGE_MISSING
- PLAYER_PROGRESS_RT_STAGE_INVALID
- PLAYER_PROGRESS_RT_HISTORY_LIVE_DENIED
- PLAYER_PROGRESS_RT_RESTRICTED_SCOPE_CONFLICT

example_scenarios:
- A new player gets onboarding-specific runtime behavior.
- A restricted player cannot use advanced-only capabilities.
