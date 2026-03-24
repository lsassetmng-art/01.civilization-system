# ============================================================
# CIVILIZATION LOAN OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for loan lifecycle.

operation_steps:
1 inspect loan target and approval basis
2 invoke loan runtime
3 persist loan outcome
4 preserve governance and finance trace

success_condition:
- loan lifecycle handled explicitly

failure_condition:
- invalid target
- approval or credit basis missing
- runtime or persistence failure
