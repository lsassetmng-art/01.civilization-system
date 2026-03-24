# ============================================================
# LIFE CORRECTION OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: life-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for correction, replay, authority, and evidence governance.

operation_steps:
1 inspect correction target and authority basis
2 invoke correction runtime
3 persist correction outcome
4 preserve correction and audit trace

success_condition:
- life correction lifecycle handled explicitly

failure_condition:
- invalid target
- basis unresolved
- runtime or persistence failure
