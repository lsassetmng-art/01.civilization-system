# ============================================================
# WORLD MODE POLICY
# ============================================================

status: canonical
layer: policy
domain: mode
subdomain: world-mode
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines policy rules for world-facing modes.

scope:
Covers public_normal, event_emphasis,
maintenance_control, restricted_operation,
and emergency_constraint world modes.

policy_focus:
- public-safe versus internal world-mode disclosure
- emergency and maintenance authority rules
- historical retention of world-mode changes
- prohibition of silent world-mode override

disclosure_matrix:
- public_normal -> public_safe
- event_emphasis -> public_safe summary allowed
- maintenance_control -> internal by default
- restricted_operation -> restricted
- emergency_constraint -> restricted or sealed depending on severity

validation_rules:
- world_ref is required for policy applicability.
- maintenance_control requires operational authority.
- emergency_constraint requires explicit control basis and historical retention.
- restricted or sealed world mode must not be publicly disclosed in raw form.

failure_codes:
- WORLD_MODE_POLICY_WORLD_REF_MISSING
- WORLD_MODE_POLICY_AUTHORITY_REQUIRED
- WORLD_MODE_POLICY_PUBLIC_DISCLOSURE_DENIED
- WORLD_MODE_POLICY_HISTORY_REQUIRED

example_scenarios:
- A city in event_emphasis mode may be publicly described as event-focused.
- A crisis zone in emergency_constraint mode must not publicly expose internal constraint semantics.
