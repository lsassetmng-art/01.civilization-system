# ============================================================
# MODE CORE SECURITY
# ============================================================

status: canonical
layer: security
domain: mode
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines core security rules for canonical mode handling.

scope:
Covers access decisions for reading current mode,
reading historical mode, switching mode,
masking restricted mode detail,
blocking sealed mode detail,
and preserving audit trace.

design_intent:
Mode security must prevent hidden privilege escalation
and prevent exposure of operational semantics
through apparently harmless mode outputs.

required_behavior:
- Enforce read authorization for current mode.
- Enforce separate authorization for historical mode.
- Enforce switch authorization for mutating actions.
- Mask restricted mode semantics where partial disclosure is allowed.
- Block sealed mode semantics where disclosure is not allowed.
- Emit security trace for allow, mask, and block decisions where required.

actor_matrix:
- public_consumer -> public_safe mode views only
- internal_consumer -> internal mode views as authorized
- restricted_operator -> restricted mode views as authorized
- high_trust_operator -> sealed mode views or switches where explicitly authorized
- auditor -> historical mode views where explicitly authorized

security_controls:
- allow
- mask
- block
- audit

decision_table:
- public_consumer + public_safe mode -> allow
- public_consumer + restricted mode -> mask or block
- internal_consumer + internal mode -> allow where authorized
- restricted_operator + restricted mode -> allow where authorized
- high_trust_operator + sealed mode -> allow only with explicit authority
- any actor + undeclared/ambiguous mode -> block
- any actor + historical mode without historical authorization -> block

validation_rules:
- actor class is required.
- requested action is required.
- target scope is required.
- historical access must be explicitly distinguishable from current access.
- switch attempts require authority basis where the scope is not standard_control.
- sealed mode disclosure requires explicit high-trust basis.

failure_codes:
- MODE_SEC_ACTOR_CLASS_MISSING
- MODE_SEC_ACTION_MISSING
- MODE_SEC_SCOPE_MISSING
- MODE_SEC_UNAUTHORIZED_READ
- MODE_SEC_UNAUTHORIZED_SWITCH
- MODE_SEC_MASK_REQUIRED
- MODE_SEC_SEALED_ACCESS_DENIED
- MODE_SEC_HISTORY_ACCESS_DENIED
- MODE_SEC_TRACE_REQUIRED

example_scenarios:
- A public consumer receives a masked public-safe mode summary instead of raw restricted mode detail.
- A restricted operator may read emergency mode detail but cannot switch it without separate control authority.
- A historical mode request without history authorization is blocked.
