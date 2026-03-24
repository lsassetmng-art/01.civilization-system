# ============================================================
# CIVILIZATION FISCAL OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for fiscal collection.

operation_steps:
1 inspect assessment and collection identity
2 invoke tax collection runtime
3 persist fiscal outcome
4 preserve fiscal and audit trace

success_condition:
- fiscal collection handled once effectively

failure_condition:
- invalid assessment target
- duplicate effective collection
- runtime or persistence failure
