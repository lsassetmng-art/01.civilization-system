# ============================================================
# GAME PERSONA ECONOMY OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for persona binding, projection, entitlement, and economy lifecycle.

operation_steps:
1 inspect persona-economy target and contract basis
2 invoke persona-economy runtime
3 persist economy outcome
4 preserve economy and audit trace

success_condition:
- game persona-economy lifecycle handled explicitly

failure_condition:
- invalid target
- basis unresolved
- runtime or persistence failure
