# ============================================================
# WORLD MODE INTEGRATION
# ============================================================

status: canonical
layer: integration
domain: mode
subdomain: world-mode
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines integration behavior for world-facing modes.

scope:
Covers public-safe world-mode export,
internal richer world-mode projection,
historical world-mode export,
and rejection of unsafe world-mode disclosure.

required_behavior:
- Support public-safe world-mode summary export.
- Support internal world-mode detail projection.
- Support historical world-mode export with label.
- Mask restricted operational or emergency semantics where required.

projection_classes:
- public_world_summary
- internal_world_detail
- historical_world_mode
- audit_world_mode

validation_rules:
- world_ref is required.
- restricted_operation and emergency_constraint must not be exposed publicly without masking.
- historical world-mode export requires historical flag.

failure_codes:
- WORLD_MODE_INT_WORLD_REF_MISSING
- WORLD_MODE_INT_PUBLIC_SCOPE_VIOLATION
- WORLD_MODE_INT_HISTORICAL_FLAG_REQUIRED

example_scenarios:
- Public consumers receive an event-emphasis summary for a city.
- Internal operators receive maintenance-control mode details for the same world scope.
