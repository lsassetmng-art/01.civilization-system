# ============================================================
# OPERATION MODE SECURITY
# ============================================================

status: canonical
layer: security
domain: mode
subdomain: operation-mode
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines security rules for operation-facing modes.

scope:
Covers normal_execution, guided_execution,
degraded_execution, emergency_execution,
and maintenance_execution security.

security_focus:
- protection of internal operational semantics
- masking of degraded/emergency internals
- control authorization for high-impact execution modes
- history and incident access control

actor_matrix:
- public_consumer -> public-safe service-impact only
- internal_worker -> guided or internal operational detail as authorized
- restricted_operator -> degraded and restricted operational detail as authorized
- high_trust_operator -> emergency_execution switching and sealed detail where authorized
- auditor -> historical operational mode chains where authorized

decision_table:
- public_consumer + degraded_execution -> public-safe impact only
- public_consumer + emergency_execution raw detail -> block
- restricted_operator + degraded_execution -> allow where authorized
- high_trust_operator + emergency_execution switch -> allow only with explicit basis
- auditor + historical emergency_execution -> allow only through audit/history path

validation_rules:
- operation_scope is required.
- emergency_execution mutation requires explicit authority basis.
- public outputs must not reveal internal emergency logic, internal routing, or control parameters.
- history access must not be substituted for current operational control.

failure_codes:
- OP_MODE_SEC_SCOPE_MISSING
- OP_MODE_SEC_PUBLIC_DETAIL_DENIED
- OP_MODE_SEC_RESTRICTED_ACCESS_DENIED
- OP_MODE_SEC_EMERGENCY_SWITCH_DENIED
- OP_MODE_SEC_HISTORY_ACCESS_DENIED

example_scenarios:
- A public surface may state service degradation, but never expose emergency control parameters.
- A restricted operator may inspect degraded mode internals without gaining emergency switch authority.
