# ============================================================
# PERSONA STATE POLICY OVERVIEW
# ============================================================

status: canonical
layer: policy
domain: state
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines the overview of persona state policies.

summary:
State policy governs explicit state transition rules,
restricted transitions,
availability handling,
release-state handling,
and fail-closed rejection of invalid state mutation.

policy_groups:
lifecycle transition policy
availability transition policy
release-state policy
restriction-state policy

policy_rules:
state mutation must remain explicit
restricted transitions must fail closed
lifecycle transition and availability change must remain distinguishable
release-state change must not be confused with generic activation state
state mutation must remain auditable

boundary:
State policy does not redefine identity truth.
State policy does not redefine memory truth.
State policy does not redefine visual state.
