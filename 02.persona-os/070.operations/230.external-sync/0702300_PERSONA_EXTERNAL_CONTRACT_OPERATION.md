# ============================================================
# PERSONA EXTERNAL CONTRACT OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for external contracts and compatibility.

operation_steps:
1 inspect contract target and schema basis
2 invoke contract runtime
3 persist contract outcome
4 preserve compatibility and audit trace

success_condition:
- external contract lifecycle handled explicitly

failure_condition:
- invalid target
- basis unresolved
- runtime or persistence failure
