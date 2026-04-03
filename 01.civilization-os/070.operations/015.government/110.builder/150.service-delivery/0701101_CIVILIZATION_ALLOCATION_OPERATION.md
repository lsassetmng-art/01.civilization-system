# ============================================================
# CIVILIZATION ALLOCATION OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for allocation and matching.

operation_steps:
1 inspect allocation target and eligibility basis
2 invoke allocation runtime
3 persist allocation result
4 preserve correlation and audit trace

success_condition:
- allocation handled explicitly

failure_condition:
- missing eligibility basis
- insufficient capacity
- runtime or persistence failure
