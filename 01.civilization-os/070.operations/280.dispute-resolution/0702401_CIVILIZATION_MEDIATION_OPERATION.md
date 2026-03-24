# ============================================================
# CIVILIZATION MEDIATION OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for mediation.

operation_steps:
1 inspect mediation target and mediator basis
2 invoke mediation runtime
3 persist mediation outcome
4 preserve settlement and audit trace

success_condition:
- mediation lifecycle handled explicitly

failure_condition:
- invalid target
- basis unresolved
- runtime or persistence failure
