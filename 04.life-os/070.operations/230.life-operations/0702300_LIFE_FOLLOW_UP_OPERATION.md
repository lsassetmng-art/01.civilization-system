# ============================================================
# LIFE FOLLOW UP OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: life-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for follow-up, check-in, and habit progress.

operation_steps:
1 inspect follow-up target and owner basis
2 invoke follow-up runtime
3 persist follow-up outcome
4 preserve follow-up and audit trace

success_condition:
- life follow-up lifecycle handled explicitly

failure_condition:
- invalid target
- basis unresolved
- runtime or persistence failure
