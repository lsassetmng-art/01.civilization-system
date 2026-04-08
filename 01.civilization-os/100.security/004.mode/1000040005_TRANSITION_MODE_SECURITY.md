# ============================================================
# TRANSITION MODE SECURITY
# ============================================================

status: canonical
layer: security
domain: mode
subdomain: transition-mode
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines security rules for transition-facing modes.

scope:
Covers onboarding_transition, migration_transition,
recovery_transition, staged_activation,
and controlled_deactivation security.

security_focus:
- protection of unstable intermediate states
- transition switch authorization
- rollback and recovery-path confidentiality where required
- prevention of stable-state misrepresentation

actor_matrix:
- ordinary_consumer -> current_transition summary only where safe
- internal_operator -> transition detail where authorized
- high_trust_operator -> critical transition control where authorized
- auditor -> historical transition trace where authorized

decision_table:
- public consumer + critical transition internals -> block or mask
- internal operator + transition detail -> allow where authorized
- high_trust operator + critical transition mutation -> allow only with explicit basis
- historical replay request + no history authorization -> block

validation_rules:
- source_state and target_state are required.
- critical transition switch requires recovery/rollback-aware authorization.
- transition detail must not be represented as stable state outside approved projection.
- historical transition traces must remain separate from current transition control.

failure_codes:
- TRANSITION_MODE_SEC_SOURCE_STATE_MISSING
- TRANSITION_MODE_SEC_TARGET_STATE_MISSING
- TRANSITION_MODE_SEC_CONTROL_DENIED
- TRANSITION_MODE_SEC_STABLE_STATE_CONFUSION
- TRANSITION_MODE_SEC_HISTORY_ACCESS_DENIED

example_scenarios:
- A staged activation may be shown externally only as limited transitional status, never as fully stable active state.
