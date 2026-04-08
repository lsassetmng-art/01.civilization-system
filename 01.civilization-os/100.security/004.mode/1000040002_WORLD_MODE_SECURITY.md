# ============================================================
# WORLD MODE SECURITY
# ============================================================

status: canonical
layer: security
domain: mode
subdomain: world-mode
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines security rules for world-facing modes.

scope:
Covers security for public_normal,
event_emphasis, maintenance_control,
restricted_operation, and emergency_constraint world modes.

security_focus:
- public-safe world-mode disclosure
- restricted maintenance and emergency mode protection
- world-mode switch authorization
- historical world-mode access control

actor_matrix:
- public_consumer -> public_normal and public-safe event_emphasis summary only
- internal_consumer -> internal world-mode context as authorized
- restricted_operator -> restricted_operation and maintenance_control as authorized
- high_trust_operator -> emergency_constraint disclosure and switching where authorized
- auditor -> historical world-mode chain where authorized

decision_table:
- public_consumer + emergency_constraint -> block or mask
- public_consumer + maintenance_control -> summary only where policy allows
- restricted_operator + maintenance_control -> allow where authorized
- high_trust_operator + emergency_constraint switch -> allow only with explicit basis
- auditor + historical_world_mode -> allow only with history/audit scope

validation_rules:
- world_ref is required.
- emergency_constraint access requires restricted or high-trust actor class.
- emergency_constraint switching requires explicit high-trust basis.
- public output must not reveal internal emergency constraints or restricted operational semantics.

failure_codes:
- WORLD_MODE_SEC_WORLD_REF_MISSING
- WORLD_MODE_SEC_PUBLIC_DISCLOSURE_DENIED
- WORLD_MODE_SEC_RESTRICTED_ACCESS_DENIED
- WORLD_MODE_SEC_EMERGENCY_SWITCH_DENIED
- WORLD_MODE_SEC_HISTORY_ACCESS_DENIED

example_scenarios:
- Public users may see that a city is under special control, but not the internal emergency restrictions.
- High-trust operators may switch a region into emergency_constraint with full trace.
