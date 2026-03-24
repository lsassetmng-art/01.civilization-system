# ============================================================
# CIVILIZATION INVOICE OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for invoices.

operation_steps:
1 inspect invoice target and party basis
2 invoke invoice runtime
3 persist invoice outcome
4 preserve accounting and audit trace

success_condition:
- invoice lifecycle handled explicitly

failure_condition:
- invalid target
- party basis unresolved
- runtime or persistence failure
