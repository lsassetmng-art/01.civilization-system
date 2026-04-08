# ============================================================
# OPERATION MODE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: mode
subdomain: operation-mode
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines canonical operation-facing modes.

scope:
Covers modes that affect work execution,
service execution, maintenance behavior,
field operation, and degraded or emergency handling.

design_intent:
Operation mode determines how work and services are performed,
but must not redefine the underlying canonical activity models.

canonical_rules:
- Operation mode must bind to operational scope.
- Operation mode must not replace activity truth.
- Operation mode must define degraded and emergency branches.
- Operation mode must expose execution implication clearly.

required_behavior:
- Support normal operation.
- Support guided operation.
- Support degraded operation.
- Support emergency operation.
- Support maintenance operation.

state_model:
operation_mode_class:
- normal_execution
- guided_execution
- degraded_execution
- emergency_execution
- maintenance_execution

validation_rules:
- operational scope is required.
- degraded and emergency modes must declare control basis.
- normal and emergency execution must not coexist as primary governing mode in the same scope.
- maintenance execution must declare duration or termination condition.

transition_rules:
- normal_execution -> guided_execution
- guided_execution -> normal_execution
- normal_execution -> degraded_execution
- degraded_execution -> emergency_execution
- emergency_execution -> guided_execution
- guided_execution -> maintenance_execution
- maintenance_execution -> normal_execution

consumer_matrix:
- ordinary user -> receives public-safe impact only
- worker/operator -> receives active operation mode
- supervisor -> may switch allowed operation mode
- auditor -> observes history, not live control by default

failure_codes:
- OP_MODE_SCOPE_MISSING
- OP_MODE_CONTROL_BASIS_MISSING
- OP_MODE_PRIMARY_CONFLICT
- OP_MODE_DURATION_MISSING

example_scenarios:
- A rail service enters degraded_execution mode due to reduced capacity.
- A field-service team enters guided_execution mode for controlled operations.
