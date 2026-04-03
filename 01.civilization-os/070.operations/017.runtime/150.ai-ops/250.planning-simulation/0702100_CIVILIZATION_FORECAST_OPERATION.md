# ============================================================
# CIVILIZATION FORECAST OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for forecasts.

operation_steps:
1 inspect forecast target and baseline basis
2 invoke forecast runtime
3 persist forecast outcome
4 preserve predictive and audit trace

success_condition:
- forecast lifecycle handled explicitly

failure_condition:
- invalid target
- basis unresolved
- runtime or persistence failure
