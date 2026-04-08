# ============================================================
# ACCESS MODE SECURITY
# ============================================================

status: canonical
layer: security
domain: mode
subdomain: access-mode
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines security rules for access-facing modes.

scope:
Covers anonymous_public, registered_standard,
onboarding_guided, restricted_operator,
and audit_review access modes.

security_focus:
- least-privilege enforcement
- onboarding containment
- operator access protection
- audit-mode authorization
- prevention of access-mode-based privilege inflation

actor_matrix:
- anonymous_actor -> anonymous_public only
- registered_actor -> registered_standard or onboarding_guided as allowed
- internal_operator -> restricted_operator as authorized
- auditor -> audit_review as explicitly authorized

decision_table:
- anonymous_actor + restricted_operator -> block
- registered_actor + audit_review -> block unless explicit audit authority
- onboarding_guided + operator capability request -> block
- restricted_operator + standard read -> allow where authorized
- auditor + audit_review read -> allow where authorized

validation_rules:
- actor identity/class is required.
- onboarding and operator semantics must remain distinct.
- audit_review requires explicit audit authority.
- access-mode outputs must not be reusable as substitute for permission grants.

failure_codes:
- ACCESS_MODE_SEC_ACTOR_MISSING
- ACCESS_MODE_SEC_LEAST_PRIVILEGE_VIOLATION
- ACCESS_MODE_SEC_AUDIT_AUTH_REQUIRED
- ACCESS_MODE_SEC_OPERATOR_SCOPE_DENIED
- ACCESS_MODE_SEC_PRIVILEGE_INFLATION_DENIED

example_scenarios:
- A new registered user cannot gain operator semantics merely because onboarding is active.
- Audit-review is blocked until audit authority is verified.
