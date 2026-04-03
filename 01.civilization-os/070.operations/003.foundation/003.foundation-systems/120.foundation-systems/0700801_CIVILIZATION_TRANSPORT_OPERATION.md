# ============================================================
# CIVILIZATION TRANSPORT OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for transport movement.

operation_steps:
1 inspect corridor target and movement identity
2 invoke transport movement runtime
3 persist movement result
4 preserve audit and movement trace

success_condition:
- transport movement handled once effectively

failure_condition:
- invalid corridor
- duplicate effective movement
- runtime or persistence failure
