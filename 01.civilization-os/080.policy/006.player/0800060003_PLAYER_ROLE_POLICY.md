# ============================================================
# PLAYER ROLE POLICY
# ============================================================

status: canonical
layer: policy
domain: player
subdomain: player-role
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines policy rules for player roles.

scope:
Covers role disclosure,
role authority requirements,
secondary-role coexistence constraints,
and historical role retention.

policy_focus:
- public-safe role summaries
- restricted operational/governance role disclosure
- authority requirements for elevated roles
- historical role trace retention

disclosure_matrix:
- public_role_summary -> public-safe only
- internal_effective_role -> internal
- restricted_role_detail -> restricted
- historical_role_trace -> historical or audit only
- audit_role_trace -> audit_only

validation_rules:
- primary_role is required.
- elevated role assignment requires authority basis.
- incompatible role combinations are prohibited.
- public summary must not imply hidden control authority.

failure_codes:
- PLAYER_ROLE_POLICY_PRIMARY_MISSING
- PLAYER_ROLE_POLICY_AUTHORITY_REQUIRED
- PLAYER_ROLE_POLICY_ROLE_CONFLICT
- PLAYER_ROLE_POLICY_PUBLIC_AUTHORITY_VIOLATION

example_scenarios:
- A public summary may state broad participation type but not reveal restricted operator semantics.
