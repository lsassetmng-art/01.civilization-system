# ============================================================
# GAME CORE OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for game core lifecycle.

operation_steps:
1 inspect game-core target and player basis
2 invoke game-core runtime
3 persist game outcome
4 preserve game and audit trace

success_condition:
- game core lifecycle handled explicitly

failure_condition:
- invalid target
- basis unresolved
- runtime or persistence failure
