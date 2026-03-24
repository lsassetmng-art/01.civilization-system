# ============================================================
# CIVILIZATION CHARGE OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for charge filing.

operation_steps:
1 inspect filing target and evidence basis
2 invoke charge runtime
3 persist filing outcome
4 preserve criminal and audit trace

success_condition:
- charge lifecycle handled explicitly

failure_condition:
- invalid target
- basis unresolved
- runtime or persistence failure
