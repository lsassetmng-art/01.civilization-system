# ============================================================
# ACCESS MODE RUNTIME
# ============================================================

status: canonical
layer: runtime
domain: mode
subdomain: access-mode
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines runtime behavior for access-facing modes.

scope:
Covers actor-to-access-mode mapping,
onboarding mode activation,
restricted operator mode delivery,
and audit mode separation.

runtime_rules:
- Runtime must resolve access mode from actor class and access context.
- Runtime must not let onboarding mode inherit unrestricted operator behavior.
- Audit mode must require explicit authority.
- Anonymous public mode must remain least-privilege.

required_behavior:
- Resolve effective access mode.
- Enforce least-privilege behavior.
- Separate onboarding, operator, and audit modes.
- Emit explicit denial on privilege escalation.

state_model:
access_mode_runtime_state:
- anonymous_public
- registered_standard
- onboarding_guided
- restricted_operator
- audit_review
- blocked

validation_rules:
- actor class is required.
- audit mode requires authority basis.
- anonymous public must not resolve to restricted operator.
- onboarding mode must not silently unlock operator capabilities.

transition_rules:
- anonymous_public -> registered_standard
- registered_standard -> onboarding_guided
- onboarding_guided -> registered_standard
- registered_standard -> restricted_operator
- restricted_operator -> audit_review

failure_codes:
- ACCESS_MODE_RT_ACTOR_CLASS_MISSING
- ACCESS_MODE_RT_AUTHORITY_REQUIRED
- ACCESS_MODE_RT_PRIVILEGE_ESCALATION_DENIED
- ACCESS_MODE_RT_ONBOARDING_SCOPE_CONFLICT

example_scenarios:
- A new registered user is placed in onboarding_guided mode.
- An audit viewer is denied audit_review mode without explicit basis.
