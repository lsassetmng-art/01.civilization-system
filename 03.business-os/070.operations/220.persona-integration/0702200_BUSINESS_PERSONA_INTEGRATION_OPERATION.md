# ============================================================
# BUSINESS PERSONA INTEGRATION OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for business persona integration lifecycle.

operation_steps:
1 inspect integration target and binding basis
2 invoke persona-integration runtime
3 persist integration outcome
4 preserve integration and audit trace

success_condition:
- business persona integration lifecycle handled explicitly

failure_condition:
- invalid target
- basis unresolved
- runtime or persistence failure
