# ============================================================
# BUSINESS REPLAY CORRECTION OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for replay, correction, authority, and evidence governance.

operation_steps:
1 inspect replay or correction target and authority basis
2 invoke replay-correction runtime
3 persist correction outcome
4 preserve correction and audit trace

success_condition:
- replay or correction lifecycle handled explicitly

failure_condition:
- invalid target
- basis unresolved
- runtime or persistence failure
