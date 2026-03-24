# ============================================================
# CIVILIZATION TRADE CONTROL OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for trade permits and controls.

operation_steps:
1 inspect permit target and restriction basis
2 invoke trade permit runtime
3 persist trade-control outcome
4 preserve border and audit trace

success_condition:
- trade-control lifecycle handled explicitly

failure_condition:
- invalid target
- basis unresolved
- runtime or persistence failure
