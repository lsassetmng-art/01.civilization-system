# ============================================================
# CIVILIZATION QUALIFICATION OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for qualifications.

operation_steps:
1 inspect qualification target and rule basis
2 invoke qualification runtime
3 persist qualification outcome
4 preserve credential and audit trace

success_condition:
- qualification lifecycle handled explicitly

failure_condition:
- invalid target
- rule basis unresolved
- runtime or persistence failure
