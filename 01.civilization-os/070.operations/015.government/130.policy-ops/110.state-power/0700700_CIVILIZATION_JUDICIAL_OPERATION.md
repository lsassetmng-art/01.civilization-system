# ============================================================
# CIVILIZATION JUDICIAL OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for judicial lifecycle.

operation_steps:
1 inspect judicial case target and governing rule
2 invoke judicial runtime
3 persist case outcome
4 preserve legal and audit trace

success_condition:
- judicial lifecycle handled explicitly

failure_condition:
- invalid case target
- governing rule unresolved
- runtime or persistence failure
