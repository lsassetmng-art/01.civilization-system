# ============================================================
# CIVILIZATION DIPLOMATIC MISSION OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for missions and envoys.

operation_steps:
1 inspect mission target and accreditation basis
2 invoke mission runtime
3 persist mission outcome
4 preserve diplomatic and audit trace

success_condition:
- mission lifecycle handled explicitly

failure_condition:
- invalid target
- basis unresolved
- runtime or persistence failure
