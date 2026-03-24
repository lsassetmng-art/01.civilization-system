# ============================================================
# GAME PROGRESSION OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for progression and reward lifecycle.

operation_steps:
1 inspect progression target and reward basis
2 invoke progression runtime
3 persist progression outcome
4 preserve progression and audit trace

success_condition:
- game progression lifecycle handled explicitly

failure_condition:
- invalid target
- basis unresolved
- runtime or persistence failure
