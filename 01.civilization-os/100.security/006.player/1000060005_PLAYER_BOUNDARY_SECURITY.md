# ============================================================
# PLAYER BOUNDARY SECURITY
# ============================================================

status: canonical
layer: security
domain: player
subdomain: player-boundary
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines security rules for player boundaries.

scope:
Covers boundary disclosure,
boundary mutation authorization,
admin-managed protection,
and historical boundary trace access.

security_focus:
- prevention of leaking control semantics
- admin-managed confidentiality
- protection against view_only or historical_only bypass
- audit-safe access to boundary history

actor_matrix:
- public_consumer -> no raw boundary detail beyond safe public summary if policy allows
- self_consumer -> own visible boundary summary where allowed
- internal_consumer -> internal boundary context where authorized
- restricted_operator -> boundary mutation where authorized
- high_trust_operator -> admin-managed boundary mutation where authorized
- auditor -> historical/admin boundary traces where authorized

decision_table:
- public_consumer + admin_managed raw detail -> block
- self_consumer + own view_only/historical summary -> allow where policy allows
- restricted_operator + boundary mutation -> require authority
- high_trust_operator + admin_managed mutation -> allow only with explicit basis
- auditor + historical boundary trace -> allow only via audit path

validation_rules:
- boundary_class is required.
- admin_managed changes require explicit authority basis.
- historical_only and view_only states must not be misused to infer hidden live control.
- historical/admin traces require distinct audit/history authorization.

failure_codes:
- PLAYER_BOUNDARY_SEC_CLASS_MISSING
- PLAYER_BOUNDARY_SEC_READ_DENIED
- PLAYER_BOUNDARY_SEC_MUTATION_DENIED
- PLAYER_BOUNDARY_SEC_ADMIN_AUTH_REQUIRED
- PLAYER_BOUNDARY_SEC_HISTORY_ACCESS_DENIED
- PLAYER_BOUNDARY_SEC_CONTROL_LEAK_DENIED

example_scenarios:
- A public consumer cannot see raw admin-managed boundary detail.
- A high-trust operator may change admin-managed state only with explicit traceable authority.
