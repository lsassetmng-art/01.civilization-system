# ============================================================
# ACCESS MODE OPERATIONS
# ============================================================

status: canonical
layer: operations
domain: mode
subdomain: access-mode
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines operational handling for access-facing modes.

scope:
Covers onboarding mode operation,
restricted operator mode administration,
audit mode control, and privilege-escalation incident response.

required_behavior:
- Support onboarding access operation.
- Support restricted_operator administration.
- Support audit_review control.
- Support containment of unauthorized escalation attempts.

state_model:
access_mode_operational_state:
- prepared
- active
- suspended
- contained
- audit_review
- archived

validation_rules:
- actor class mapping is required.
- audit access requires explicit authority.
- onboarding mode must not be converted into operator scope by accident.
- contained escalation incidents must preserve evidence.

transition_rules:
- prepared -> active
- active -> suspended
- suspended -> active
- active -> contained
- contained -> audit_review
- audit_review -> archived

failure_codes:
- ACCESS_MODE_OP_ACTOR_CLASS_MISSING
- ACCESS_MODE_OP_AUTHORITY_REQUIRED
- ACCESS_MODE_OP_ESCALATION_DETECTED
- ACCESS_MODE_OP_EVIDENCE_MISSING

example_scenarios:
- An unauthorized audit-mode request is contained and preserved for review.
