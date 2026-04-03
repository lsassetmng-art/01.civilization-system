# ============================================================
# CIVILIZATION PAYROLL OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for payroll.

operation_steps:
1 inspect payroll target and identity basis
2 invoke payroll runtime
3 persist payroll outcome
4 preserve compensation and audit trace

success_condition:
- payroll handled once effectively

failure_condition:
- invalid target
- duplicate effective payroll
- runtime or persistence failure
