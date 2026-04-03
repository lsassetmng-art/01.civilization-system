# ============================================================
# CIVILIZATION SENTENCE OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for sentence execution.

operation_steps:
1 inspect execution target and authority basis
2 invoke sentence runtime
3 persist execution outcome
4 preserve execution and audit trace

success_condition:
- sentence execution lifecycle handled explicitly

failure_condition:
- invalid target
- basis unresolved
- runtime or persistence failure
