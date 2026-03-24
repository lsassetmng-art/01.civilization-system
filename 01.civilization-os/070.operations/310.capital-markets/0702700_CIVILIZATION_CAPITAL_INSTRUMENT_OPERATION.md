# ============================================================
# CIVILIZATION CAPITAL INSTRUMENT OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for capital instruments.

operation_steps:
1 inspect instrument target and issuer basis
2 invoke capital instrument runtime
3 persist instrument outcome
4 preserve capital and audit trace

success_condition:
- capital instrument lifecycle handled explicitly

failure_condition:
- invalid target
- basis unresolved
- runtime or persistence failure
