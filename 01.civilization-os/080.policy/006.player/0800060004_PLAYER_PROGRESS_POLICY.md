# ============================================================
# PLAYER PROGRESS POLICY
# ============================================================

status: canonical
layer: policy
domain: player
subdomain: player-progress
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines policy rules for player progression.

scope:
Covers onboarding disclosure,
advanced or restricted progression control,
historical progression retention,
and prohibition of unsafe progression misrepresentation.

policy_focus:
- self/internal progress disclosure
- restricted-stage governance
- historical progression replay and labeling
- prohibition of treating restricted as advanced-open state

disclosure_matrix:
- self_progress_summary -> self only unless authorized
- internal_progress_context -> internal
- restricted_progress_detail -> restricted
- historical_progress_trace -> historical or audit only
- audit_progress_trace -> audit_only

validation_rules:
- progress_stage is required.
- restricted stage must preserve control basis where applicable.
- historical progression must remain labeled and separate.
- current progress output must not be replaced by historical replay.

failure_codes:
- PLAYER_PROGRESS_POLICY_STAGE_MISSING
- PLAYER_PROGRESS_POLICY_RESTRICTED_SCOPE_VIOLATION
- PLAYER_PROGRESS_POLICY_HISTORY_REQUIRED
- PLAYER_PROGRESS_POLICY_LIVE_HISTORY_CONFUSION

example_scenarios:
- A participant may view only their safe current progress summary, not unrestricted internal progression logic.
