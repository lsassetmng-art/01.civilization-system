# ============================================================
# TRANSITION MODE RUNTIME
# ============================================================

status: canonical
layer: runtime
domain: mode
subdomain: transition-mode
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines runtime behavior for transition-facing modes.

scope:
Covers onboarding, migration, recovery,
staged activation, and controlled deactivation modes at runtime.

runtime_rules:
- Runtime must bind transition mode to source and target state context.
- Runtime must not treat transition mode as stable steady state.
- Runtime must require exit condition.
- Runtime must support recovery or abort branch where required.

required_behavior:
- Resolve active transition mode.
- Enforce exit condition and completion path.
- Separate transition mode from stable mode delivery.
- Reject incomplete critical transition without rollback or recovery basis.

state_model:
transition_mode_runtime_state:
- onboarding_transition
- migration_transition
- recovery_transition
- staged_activation
- controlled_deactivation
- blocked
- completed

validation_rules:
- source_state is required.
- target_state is required.
- exit_condition is required.
- critical transition requires rollback or recovery path.
- completed transition must not remain current-active.

transition_rules:
- onboarding_transition -> completed
- migration_transition -> completed
- recovery_transition -> completed
- staged_activation -> completed
- controlled_deactivation -> completed

failure_codes:
- TRANSITION_MODE_RT_SOURCE_STATE_MISSING
- TRANSITION_MODE_RT_TARGET_STATE_MISSING
- TRANSITION_MODE_RT_EXIT_CONDITION_MISSING
- TRANSITION_MODE_RT_RECOVERY_PATH_REQUIRED

example_scenarios:
- A staged activation remains transitional until exit criteria are met.
- A migration transition is blocked because rollback path is missing in a critical scope.
