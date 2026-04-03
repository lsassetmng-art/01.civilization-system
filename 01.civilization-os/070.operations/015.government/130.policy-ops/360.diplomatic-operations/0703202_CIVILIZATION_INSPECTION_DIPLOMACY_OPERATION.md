# ============================================================
# CIVILIZATION INSPECTION DIPLOMACY OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for inspection diplomacy and incidents.

operation_steps:
1 inspect inspection target and mandate basis
2 invoke inspection-diplomacy runtime
3 persist inspection outcome
4 preserve diplomatic compliance and audit trace

success_condition:
- inspection diplomacy lifecycle handled explicitly

failure_condition:
- invalid target
- basis unresolved
- runtime or persistence failure
