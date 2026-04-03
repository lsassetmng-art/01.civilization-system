# ============================================================
# CIVILIZATION RELOCATION OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for relocation.

operation_steps:
1 inspect relocation target and approval basis
2 invoke relocation runtime
3 persist relocation outcome
4 preserve movement and audit trace

success_condition:
- relocation lifecycle handled explicitly

failure_condition:
- invalid target
- approval basis missing
- runtime or persistence failure
