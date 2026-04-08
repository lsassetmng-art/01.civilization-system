# ============================================================
# OPERATION MODE RUNTIME
# ============================================================

status: canonical
layer: runtime
domain: mode
subdomain: operation-mode
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines runtime behavior for operation-facing modes.

scope:
Covers normal, guided, degraded,
emergency, and maintenance operation-mode resolution.

runtime_rules:
- Runtime must resolve operation mode by operational scope.
- Runtime must not let degraded or emergency mode silently disappear during active incident.
- Operation mode must not rewrite canonical activity sequence.
- Maintenance mode requires termination condition or explicit operator control.

required_behavior:
- Resolve current operation mode.
- Expose public-safe impact where necessary.
- Expose richer active operation mode to authorized operators.
- Support degraded/emergency escalation semantics.

state_model:
operation_mode_runtime_state:
- normal_execution
- guided_execution
- degraded_execution
- emergency_execution
- maintenance_execution
- blocked
- historical_only

validation_rules:
- operation_scope is required.
- degraded or emergency mode requires control basis.
- incompatible primary operation modes in same scope are prohibited.
- maintenance execution requires exit or termination basis.

transition_rules:
- normal_execution -> guided_execution
- normal_execution -> degraded_execution
- degraded_execution -> emergency_execution
- guided_execution -> maintenance_execution
- maintenance_execution -> normal_execution

failure_codes:
- OP_MODE_RT_SCOPE_MISSING
- OP_MODE_RT_CONTROL_BASIS_MISSING
- OP_MODE_RT_PRIMARY_CONFLICT
- OP_MODE_RT_TERMINATION_BASIS_MISSING

example_scenarios:
- A service enters degraded_execution and runtime shows reduced-capacity behavior.
- An operator sees emergency_execution details while the public receives only service-impact summary.
