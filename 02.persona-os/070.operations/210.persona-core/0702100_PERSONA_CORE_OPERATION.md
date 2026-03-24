# ============================================================
# PERSONA CORE OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for persona core lifecycle.

operation_steps:
1 inspect persona target and source basis
2 invoke persona-state runtime
3 persist persona outcome
4 preserve persona and audit trace

success_condition:
- persona core lifecycle handled explicitly

failure_condition:
- invalid target
- basis unresolved
- runtime or persistence failure
