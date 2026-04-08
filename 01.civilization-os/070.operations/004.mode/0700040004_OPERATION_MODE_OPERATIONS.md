# ============================================================
# OPERATION MODE OPERATIONS
# ============================================================

status: canonical
layer: operations
domain: mode
subdomain: operation-mode
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines operational handling for operation-facing modes.

scope:
Covers normal, guided, degraded,
emergency, and maintenance execution modes,
including escalation, containment, and rollback-safe restoration.

required_behavior:
- Support controlled shift across operation modes.
- Support degraded and emergency escalation handling.
- Support maintenance window control.
- Support rollback-safe return to normal execution.

state_model:
operation_mode_operational_state:
- prepared
- active
- degraded
- emergency
- maintenance
- contained
- historical
- archived

validation_rules:
- operation_scope is required.
- degraded and emergency mode require control basis.
- return to normal must preserve incident history.
- conflicting primary operation modes require containment.

transition_rules:
- prepared -> active
- active -> degraded
- degraded -> emergency
- emergency -> active
- active -> maintenance
- maintenance -> active
- active -> contained
- active -> historical
- historical -> archived

failure_codes:
- OP_MODE_OP_SCOPE_MISSING
- OP_MODE_OP_CONTROL_BASIS_REQUIRED
- OP_MODE_OP_PRIMARY_CONFLICT
- OP_MODE_OP_HISTORY_PRESERVATION_REQUIRED

example_scenarios:
- A degraded rail service escalates to emergency mode, then returns to active normal with preserved history.
