# ============================================================
# PERSONA RIGHTS OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for persona rights lifecycle.

operation_steps:
1 inspect rights target and authority basis
2 invoke persona-rights runtime
3 persist rights outcome
4 preserve rights and audit trace

success_condition:
- persona rights lifecycle handled explicitly

failure_condition:
- invalid target
- basis unresolved
- runtime or persistence failure
