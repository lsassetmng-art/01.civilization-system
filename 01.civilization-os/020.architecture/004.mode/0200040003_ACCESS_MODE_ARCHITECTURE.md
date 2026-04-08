# ============================================================
# ACCESS MODE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: mode
subdomain: access-mode
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines canonical access-facing modes.

scope:
Covers access contexts such as public access,
registered access, onboarding access,
restricted operational access, and audit access.

design_intent:
Access mode determines how the system opens or limits surfaces,
but must remain distinct from identity and permission truth.

canonical_rules:
- Access mode must not replace authentication truth.
- Access mode must not replace authorization truth.
- Access mode must declare consumer-facing access context.
- Access mode must remain queryable by downstream layers.

required_behavior:
- Support public access mode.
- Support registered-user mode.
- Support onboarding mode.
- Support restricted operational mode.
- Support audit mode.

state_model:
access_mode_class:
- anonymous_public
- registered_standard
- onboarding_guided
- restricted_operator
- audit_review

validation_rules:
- access mode must map to declared actor class.
- audit mode requires explicit authority path.
- onboarding mode must not inherit unrestricted operator behavior.
- anonymous public mode must remain least-privilege.

transition_rules:
- anonymous_public -> registered_standard
- registered_standard -> onboarding_guided
- onboarding_guided -> registered_standard
- registered_standard -> restricted_operator
- restricted_operator -> audit_review
- audit_review -> restricted_operator

actor_matrix:
- anonymous visitor -> anonymous_public only
- registered user -> registered_standard or onboarding_guided
- operator -> restricted_operator
- auditor -> audit_review

failure_codes:
- ACCESS_MODE_ACTOR_CLASS_MISSING
- ACCESS_MODE_AUDIT_AUTHORITY_MISSING
- ACCESS_MODE_PRIVILEGE_ESCALATION_DENIED
- ACCESS_MODE_ONBOARDING_SCOPE_CONFLICT

example_scenarios:
- A new user enters onboarding_guided mode after registration.
- An internal reviewer enters audit_review mode for historical inspection.
