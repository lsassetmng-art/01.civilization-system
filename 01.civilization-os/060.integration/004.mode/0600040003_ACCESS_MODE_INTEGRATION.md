# ============================================================
# ACCESS MODE INTEGRATION
# ============================================================

status: canonical
layer: integration
domain: mode
subdomain: access-mode
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines integration behavior for access-facing modes.

scope:
Covers export of access-mode context to internal consumers,
bounded export of access summaries,
and rejection of unauthorized access-mode escalation across boundaries.

required_behavior:
- Support internal access-mode delivery.
- Support public-safe onboarding or anonymous summaries where appropriate.
- Prevent access-mode export from becoming de facto permission transfer.
- Reject authorityless escalation requests.

projection_classes:
- anonymous_summary
- onboarding_summary
- internal_access_context
- audit_access_context

validation_rules:
- actor class and access mode mapping must remain coherent.
- audit access export requires explicit authority.
- exported access context must not imply permission ownership transfer.

failure_codes:
- ACCESS_MODE_INT_ACTOR_CLASS_MISSING
- ACCESS_MODE_INT_AUTHORITY_REQUIRED
- ACCESS_MODE_INT_PERMISSION_TRANSFER_DENIED

example_scenarios:
- An onboarding flow receives onboarding_summary context.
- An external consumer is denied any export that implies operator capability.
