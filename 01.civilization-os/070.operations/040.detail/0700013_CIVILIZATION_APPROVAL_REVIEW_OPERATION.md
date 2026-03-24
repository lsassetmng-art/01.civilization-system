# ============================================================
# CIVILIZATION APPROVAL REVIEW OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for approval review.

operation_steps:
1 inspect approval request
2 inspect requested scope and payload hash
3 review decision basis
4 approve, reject, or expire request
5 persist decision record
6 preserve audit visibility

success_condition:
- decision persisted once with traceability

failure_condition:
- decision not persisted
- ambiguous review outcome
- approval leaked without record
