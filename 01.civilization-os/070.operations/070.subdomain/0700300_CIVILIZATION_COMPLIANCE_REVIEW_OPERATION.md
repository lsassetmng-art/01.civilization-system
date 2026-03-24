# ============================================================
# CIVILIZATION COMPLIANCE REVIEW OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for compliance review.

operation_steps:
1 inspect review target and governing rule
2 invoke compliance review runtime
3 persist review outcome
4 preserve operator visibility and audit trace

success_condition:
- compliance review executed once with explicit basis

failure_condition:
- rule missing
- target invalid
- runtime or persistence failure
