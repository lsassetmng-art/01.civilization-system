# ============================================================
# PLAYER ROLE INTEGRATION
# ============================================================

status: canonical
layer: integration
domain: player
subdomain: player-role
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines integration behavior for player role data.

scope:
Covers internal role projection,
public-safe role summaries,
historical role export,
and protection of restricted operational or governance roles.

required_behavior:
- Support internal effective-role projection.
- Support bounded public-safe role summary where allowed.
- Support historical role export with label.
- Deny or mask restricted operator/governor/auditor role semantics outside authority.

projection_classes:
- internal_effective_role
- public_role_summary
- historical_role_trace
- audit_role_trace

validation_rules:
- player_ref is required.
- historical role export requires historical flag.
- public role summary must not imply hidden authority or permission ownership.
- restricted operational/governance role detail must not be exported publicly.

failure_codes:
- PLAYER_ROLE_INT_REF_MISSING
- PLAYER_ROLE_INT_HISTORICAL_FLAG_REQUIRED
- PLAYER_ROLE_INT_PUBLIC_AUTHORITY_VIOLATION

example_scenarios:
- A public-safe summary may identify a broad participation class only.
- Internal operations may receive the effective bounded operator role context.
