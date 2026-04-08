# ============================================================
# CIVILIZATION STATE MACHINE OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for shared lifecycle state machines.

operation_steps:
1 inspect lifecycle target and transition basis
2 invoke state-machine runtime
3 persist lifecycle outcome
4 preserve transition and audit trace

success_condition:
- shared lifecycle handled explicitly

failure_condition:
- invalid target
- transition basis unresolved
- runtime or persistence failure
