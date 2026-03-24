# ============================================================
# CIVILIZATION INVESTIGATION OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for investigations.

operation_steps:
1 inspect case target and initiating basis
2 invoke investigation runtime
3 persist case outcome
4 preserve investigative and audit trace

success_condition:
- investigation lifecycle handled explicitly

failure_condition:
- invalid target
- basis unresolved
- runtime or persistence failure
