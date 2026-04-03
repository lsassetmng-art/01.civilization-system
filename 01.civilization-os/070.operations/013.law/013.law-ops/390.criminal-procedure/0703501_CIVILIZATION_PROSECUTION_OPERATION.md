# ============================================================
# CIVILIZATION PROSECUTION OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for prosecution and parole review.

operation_steps:
1 inspect review target and filing basis
2 invoke prosecution runtime
3 persist review outcome
4 preserve review and audit trace

success_condition:
- review lifecycle handled explicitly

failure_condition:
- invalid target
- basis unresolved
- runtime or persistence failure
