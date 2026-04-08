# ============================================================
# TRANSITION MODE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: mode
subdomain: transition-mode
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines canonical transition-facing modes.

scope:
Covers modes used when the system or a domain object
is moving between stable states,
including onboarding, migration, recovery, controlled replacement,
and staged activation.

design_intent:
Transition mode exists so unstable intermediate states
are treated explicitly rather than hidden inside ad hoc logic.

canonical_rules:
- Transition mode must bind to a source and target state context.
- Transition mode must not be treated as steady-state normal mode.
- Transition mode must declare exit condition.
- Transition mode must support recovery branch where needed.

required_behavior:
- Support onboarding transition.
- Support migration transition.
- Support recovery transition.
- Support staged activation.
- Support controlled deactivation.

state_model:
transition_mode_class:
- onboarding_transition
- migration_transition
- recovery_transition
- staged_activation
- controlled_deactivation

validation_rules:
- source_state is required.
- target_state is required.
- exit_condition is required.
- transition mode without completion or abort path is prohibited.

transition_rules:
- onboarding_transition -> stable access mode
- migration_transition -> target stable mode
- recovery_transition -> stable operation mode
- staged_activation -> active mode
- controlled_deactivation -> archived or suspended mode

decision_matrix:
- incomplete transition + no recovery path -> invalid
- staged activation + no rollback path -> invalid for critical scope
- controlled deactivation + no target archive/suspend path -> invalid

failure_codes:
- TRANSITION_MODE_SOURCE_STATE_MISSING
- TRANSITION_MODE_TARGET_STATE_MISSING
- TRANSITION_MODE_EXIT_CONDITION_MISSING
- TRANSITION_MODE_RECOVERY_PATH_MISSING

example_scenarios:
- A new service enters staged_activation before full public release.
- A player account enters onboarding_transition before stable registered mode.
