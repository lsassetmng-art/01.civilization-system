# ============================================================
# CIVILIZATION POLICY IMPACT OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for policy-impact estimation.

operation_steps:
1 inspect estimate target and source-policy basis
2 invoke policy-impact runtime
3 persist estimate outcome
4 preserve planning and audit trace

success_condition:
- policy-impact lifecycle handled explicitly

failure_condition:
- invalid target
- basis unresolved
- runtime or persistence failure
