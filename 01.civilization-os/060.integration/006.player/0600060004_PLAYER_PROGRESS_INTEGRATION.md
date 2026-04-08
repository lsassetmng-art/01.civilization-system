# ============================================================
# PLAYER PROGRESS INTEGRATION
# ============================================================

status: canonical
layer: integration
domain: player
subdomain: player-progress
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines integration behavior for player progression data.

scope:
Covers onboarding progress export,
internal current progress projection,
historical progression export,
and protection of restricted progression semantics.

required_behavior:
- Support internal progress projection.
- Support bounded self-facing progression summary where allowed.
- Support historical progression export.
- Prevent restricted progression semantics from being misrepresented as advanced open capability.

projection_classes:
- internal_progress_context
- self_progress_summary
- historical_progress_trace
- audit_progress_trace

validation_rules:
- player_ref is required.
- current progress export must identify valid stage.
- historical export requires historical flag.
- restricted progress state must not be projected as unrestricted advanced state.

failure_codes:
- PLAYER_PROGRESS_INT_REF_MISSING
- PLAYER_PROGRESS_INT_STAGE_INVALID
- PLAYER_PROGRESS_INT_HISTORICAL_FLAG_REQUIRED
- PLAYER_PROGRESS_INT_RESTRICTED_SCOPE_VIOLATION

example_scenarios:
- A self-facing dashboard receives onboarding summary safely.
- An audit export includes historical progression transitions.
