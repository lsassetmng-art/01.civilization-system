# ============================================================
# CIVILIZATION DEATH OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for death registration.

operation_steps:
1 inspect death target and registration basis
2 invoke death registration runtime
3 persist death outcome
4 preserve civil and audit trace

success_condition:
- death lifecycle handled explicitly

failure_condition:
- invalid target
- basis unresolved
- runtime or persistence failure
