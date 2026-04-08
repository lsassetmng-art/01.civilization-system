# ============================================================
# TRANSITION MODE OPERATIONS
# ============================================================

status: canonical
layer: operations
domain: mode
subdomain: transition-mode
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines operational handling for transition-facing modes.

scope:
Covers onboarding_transition, migration_transition,
recovery_transition, staged_activation,
and controlled_deactivation operations.

required_behavior:
- Support monitored transition execution.
- Support completion and rollback review.
- Support containment of incomplete critical transitions.
- Support archival of completed transition records.

state_model:
transition_mode_operational_state:
- prepared
- active_transition
- completed
- rollback_review
- contained
- archived

validation_rules:
- source_state is required.
- target_state is required.
- exit_condition is required.
- critical transition without rollback or recovery basis requires containment.

transition_rules:
- prepared -> active_transition
- active_transition -> completed
- active_transition -> rollback_review
- active_transition -> contained
- completed -> archived

failure_codes:
- TRANSITION_MODE_OP_SOURCE_STATE_MISSING
- TRANSITION_MODE_OP_TARGET_STATE_MISSING
- TRANSITION_MODE_OP_EXIT_CONDITION_MISSING
- TRANSITION_MODE_OP_RECOVERY_PATH_REQUIRED

example_scenarios:
- A staged activation remains active_transition until completion criteria are met, otherwise enters rollback_review.
