# ============================================================
# GAME SECURITY MODERATION OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for anti-cheat, moderation, and replay lifecycle.

operation_steps:
1 inspect security target and authority basis
2 invoke security-moderation runtime
3 persist security outcome
4 preserve security and audit trace

success_condition:
- game security lifecycle handled explicitly

failure_condition:
- invalid target
- basis unresolved
- runtime or persistence failure
