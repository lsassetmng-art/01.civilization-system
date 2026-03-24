# ============================================================
# PERSONA PROFILE COMPOSITION OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for profile composition.

operation_steps:
1 inspect profile target and component basis
2 invoke profile-composition runtime
3 persist composition outcome
4 preserve composition and audit trace

success_condition:
- profile composition lifecycle handled explicitly

failure_condition:
- invalid target
- basis unresolved
- runtime or persistence failure
