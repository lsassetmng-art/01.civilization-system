# ============================================================
# ACCESS MODE POLICY
# ============================================================

status: canonical
layer: policy
domain: mode
subdomain: access-mode
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines policy rules for access-facing modes.

scope:
Covers anonymous_public, registered_standard,
onboarding_guided, restricted_operator,
and audit_review access modes.

policy_focus:
- least-privilege access policy
- onboarding separation policy
- audit-mode authority policy
- prohibition of hidden privilege escalation

disclosure_matrix:
- anonymous_public -> public_safe
- registered_standard -> internal summary only where needed
- onboarding_guided -> self/internal guided only
- restricted_operator -> restricted
- audit_review -> audit_only

validation_rules:
- anonymous_public must remain least-privilege.
- onboarding_guided must not inherit restricted operator capabilities.
- audit_review requires explicit audit authority.
- exported access-mode context must not imply permission ownership transfer.

failure_codes:
- ACCESS_MODE_POLICY_LEAST_PRIVILEGE_VIOLATION
- ACCESS_MODE_POLICY_ONBOARDING_SCOPE_CONFLICT
- ACCESS_MODE_POLICY_AUDIT_AUTHORITY_REQUIRED
- ACCESS_MODE_POLICY_PRIVILEGE_ESCALATION_DENIED

example_scenarios:
- A new user may be placed in onboarding_guided mode but not gain operator semantics.
- Audit_review may be granted only through explicit audit authority path.
