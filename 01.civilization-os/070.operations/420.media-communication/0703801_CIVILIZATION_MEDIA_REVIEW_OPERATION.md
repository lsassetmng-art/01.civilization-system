# ============================================================
# CIVILIZATION MEDIA REVIEW OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for incidents and misinformation reviews.

operation_steps:
1 inspect incident target and content basis
2 invoke media-incident runtime
3 persist review outcome
4 preserve integrity and audit trace

success_condition:
- media review lifecycle handled explicitly

failure_condition:
- invalid target
- basis unresolved
- runtime or persistence failure
