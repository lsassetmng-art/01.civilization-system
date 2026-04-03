# ============================================================
# CIVILIZATION BUDGET OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for budget allocation updates.

operation_steps:
1 inspect budget target and source decision
2 invoke budget allocation runtime
3 persist allocation result
4 preserve decision and audit trace

success_condition:
- budget updated once under explicit basis

failure_condition:
- invalid target
- missing decision basis
- runtime or persistence failure
