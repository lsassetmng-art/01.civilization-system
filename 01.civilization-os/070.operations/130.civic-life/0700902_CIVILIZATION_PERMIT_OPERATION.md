# ============================================================
# CIVILIZATION PERMIT OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for permit lifecycle.

operation_steps:
1 inspect permit target and approval basis
2 invoke permit runtime
3 persist permit outcome
4 preserve governance traceability

success_condition:
- permit lifecycle handled explicitly

failure_condition:
- invalid target
- approval basis missing
- runtime or persistence failure
