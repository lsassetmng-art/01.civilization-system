# ============================================================
# OPERATION MODE INTEGRATION
# ============================================================

status: canonical
layer: integration
domain: mode
subdomain: operation-mode
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines integration behavior for operation-facing modes.

scope:
Covers public-safe service-impact projection,
internal operation-mode projection,
historical operation-mode export,
and masking of sensitive degraded or emergency semantics.

required_behavior:
- Support public-safe impact export.
- Support internal operator projection.
- Support historical operation-mode export.
- Mask sensitive emergency or maintenance details where required.

projection_classes:
- public_service_impact
- internal_operation_detail
- historical_operation_mode
- audit_operation_mode

validation_rules:
- operation_scope is required.
- emergency or maintenance internal detail must not be exported publicly as raw control detail.
- historical export requires historical label.

failure_codes:
- OP_MODE_INT_SCOPE_MISSING
- OP_MODE_INT_PUBLIC_DETAIL_VIOLATION
- OP_MODE_INT_HISTORICAL_FLAG_REQUIRED

example_scenarios:
- A public service board shows degraded service impact only.
- An internal operations console receives emergency-execution context.
