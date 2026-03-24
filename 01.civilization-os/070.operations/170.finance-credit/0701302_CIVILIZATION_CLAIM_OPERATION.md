# ============================================================
# CIVILIZATION CLAIM OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for insurance claims.

operation_steps:
1 inspect claim target and policy basis
2 invoke claim runtime
3 persist claim outcome
4 preserve policy and audit trace

success_condition:
- claim lifecycle handled explicitly

failure_condition:
- invalid target
- policy basis missing
- runtime or persistence failure
