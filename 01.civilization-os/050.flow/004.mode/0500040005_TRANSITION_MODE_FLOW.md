# ============================================================
# TRANSITION MODE FLOW
# ============================================================

status: canonical
layer: flow
domain: mode
subdomain: transition-mode
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines process flow for transition-mode handling.

scope:
Covers onboarding, migration, recovery,
staged activation, and controlled deactivation flows.

required_behavior:
- Bind source and target state.
- Validate exit condition.
- Validate rollback or recovery path where required.
- Deliver transition mode until completion.
- Block unsafe incomplete transition.

flow_state_model:
transition_mode_flow_state:
- requested
- states_bound
- exit_checked
- recovery_checked
- active_transition_delivered
- completed
- blocked

transition_mode_sequence:
1. receive transition-mode request
2. bind source_state and target_state
3. validate exit condition
4. validate recovery/rollback path if critical
5. deliver transition mode
6. complete or block

failure_codes:
- TRANSITION_MODE_FLOW_SOURCE_STATE_MISSING
- TRANSITION_MODE_FLOW_TARGET_STATE_MISSING
- TRANSITION_MODE_FLOW_EXIT_CONDITION_MISSING
- TRANSITION_MODE_FLOW_RECOVERY_PATH_REQUIRED

example_scenarios:
- A staged activation remains active until exit conditions are satisfied.
- A migration transition is blocked because rollback path is missing.

validation_rules:
- canonical scope binding is required
- invalid or ambiguous state must block delivery
- live and historical paths must remain distinct where applicable

decision_matrix:
- valid request + valid scope + valid path -> deliver
- invalid scope or invalid state -> block
- historical request without history path -> block
- restricted path without authority where relevant -> block
