# ============================================================
# LIFE LIFECYCLE OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: life-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for shared lifecycle governance in LifeOS.

operation_steps:
1 inspect lifecycle target and transition basis
2 invoke lifecycle runtime
3 persist lifecycle outcome
4 preserve lifecycle and audit trace

success_condition:
- life lifecycle handled explicitly

failure_condition:
- invalid target
- basis unresolved
- runtime or persistence failure
