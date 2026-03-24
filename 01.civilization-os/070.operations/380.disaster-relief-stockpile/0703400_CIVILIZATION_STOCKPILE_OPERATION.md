# ============================================================
# CIVILIZATION STOCKPILE OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for stockpiles.

operation_steps:
1 inspect stockpile target and reserve basis
2 invoke stockpile runtime
3 persist reserve outcome
4 preserve reserve and audit trace

success_condition:
- stockpile lifecycle handled explicitly

failure_condition:
- invalid target
- basis unresolved
- runtime or persistence failure
