# ============================================================
# TRANSITION MODE POLICY
# ============================================================

status: canonical
layer: policy
domain: mode
subdomain: transition-mode
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines policy rules for transition-facing modes.

scope:
Covers onboarding_transition, migration_transition,
recovery_transition, staged_activation,
and controlled_deactivation.

policy_focus:
- mandatory exit conditions
- recovery and rollback requirements
- distinction between transitional and stable states
- historical retention of completed transition paths

validation_rules:
- source_state is required.
- target_state is required.
- exit_condition is required.
- critical transition requires rollback or recovery basis.
- transition state must not be publicly misrepresented as stable current state.

failure_codes:
- TRANSITION_MODE_POLICY_SOURCE_STATE_MISSING
- TRANSITION_MODE_POLICY_TARGET_STATE_MISSING
- TRANSITION_MODE_POLICY_EXIT_CONDITION_MISSING
- TRANSITION_MODE_POLICY_RECOVERY_PATH_REQUIRED
- TRANSITION_MODE_POLICY_STABLE_STATE_MISREPRESENTATION

example_scenarios:
- A staged activation may be visible internally as transitional but not represented externally as fully active stable mode.

required_behavior:
- define allowed transition disclosure levels
- require explicit control basis for critical transition actions
- preserve historical labeling for completed transitions

policy_rules:
- transition output must not imply stable-state completion before exit criteria
- critical transition changes require explicit authority basis
- transition history must remain retained where required

disclosure_matrix:
- current_transition_summary -> bounded safe disclosure
- internal_transition_detail -> internal or restricted
- historical_transition -> historical only
- audit_transition_trace -> audit_only

authority_matrix:
- ordinary consumer -> no transition control
- internal operator -> bounded transition visibility only
- high-trust operator -> critical transition control where authorized
