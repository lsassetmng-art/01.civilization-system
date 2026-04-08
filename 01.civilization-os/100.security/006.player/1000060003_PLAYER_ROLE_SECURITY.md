# ============================================================
# PLAYER ROLE SECURITY
# ============================================================

status: canonical
layer: security
domain: player
subdomain: player-role
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines security rules for player roles.

scope:
Covers role disclosure,
role mutation authorization,
restricted role masking,
and historical role access.

security_focus:
- masking of operational/governance/audit roles where needed
- prevention of unauthorized elevated-role assignment
- separation of summary role display from effective authority
- historical role audit control

actor_matrix:
- public_consumer -> public-safe broad role summary only
- self_consumer -> own bounded role context where allowed
- internal_consumer -> internal role detail where authorized
- restricted_operator -> role assignment/correction where authorized
- high_trust_operator -> elevated role assignment where authorized
- auditor -> historical role trace where authorized

decision_table:
- public_consumer + restricted operator/governor role detail -> block or mask
- self_consumer + own broad role context -> allow where policy allows
- restricted_operator + elevated role assignment -> require higher authority if role exceeds scope
- auditor + historical role trace -> allow only via audit path

validation_rules:
- primary_role is required for mutation or effective-role disclosure.
- elevated role assignment requires explicit authority basis.
- public-safe role summary must not imply hidden capabilities.
- historical role access must be distinctly authorized.

failure_codes:
- PLAYER_ROLE_SEC_PRIMARY_ROLE_MISSING
- PLAYER_ROLE_SEC_PUBLIC_DETAIL_DENIED
- PLAYER_ROLE_SEC_ASSIGNMENT_DENIED
- PLAYER_ROLE_SEC_ELEVATED_AUTH_REQUIRED
- PLAYER_ROLE_SEC_HISTORY_ACCESS_DENIED

example_scenarios:
- A public profile may show broad participation type, but not reveal restricted operational role detail.
