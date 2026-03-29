# ============================================================
# GAME DEVELOPER PLATFORM OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for GameOS developer-platform lifecycle.

operation_steps:
1 inspect developer-platform target and workspace basis
2 invoke developer-platform runtime
3 persist developer-platform outcome
4 preserve developer-platform and audit trace

success_condition:
- developer-platform lifecycle handled explicitly

failure_condition:
- invalid target
- basis unresolved
- runtime or persistence failure
