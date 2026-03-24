# ============================================================
# CIVILIZATION ASYLUM OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for asylum and nationality.

operation_steps:
1 inspect target and protection basis
2 invoke asylum runtime
3 persist asylum outcome
4 preserve civil and audit trace

success_condition:
- asylum lifecycle handled explicitly

failure_condition:
- invalid target
- basis unresolved
- runtime or persistence failure
