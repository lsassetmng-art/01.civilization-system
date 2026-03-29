# ============================================================
# GAME TEMPLATE ASSET OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for Game Builder template-asset lifecycle.

operation_steps:
1 inspect template-asset target and runtime family basis
2 invoke template-asset runtime
3 persist template-asset outcome
4 preserve template-asset and audit trace

success_condition:
- template-asset lifecycle handled explicitly

failure_condition:
- invalid target
- basis unresolved
- runtime or persistence failure
