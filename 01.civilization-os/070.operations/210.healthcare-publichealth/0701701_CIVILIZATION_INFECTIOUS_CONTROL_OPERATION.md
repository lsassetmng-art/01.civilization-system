# ============================================================
# CIVILIZATION INFECTIOUS CONTROL OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for infectious control.

operation_steps:
1 inspect infectious target and disease basis
2 invoke infectious-control runtime
3 persist case outcome
4 preserve alert and audit trace

success_condition:
- infectious-control lifecycle handled explicitly

failure_condition:
- invalid target
- disease basis unresolved
- runtime or persistence failure
