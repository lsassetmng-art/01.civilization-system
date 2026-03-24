# ============================================================
# CIVILIZATION CREDIT OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for credit evaluation.

operation_steps:
1 inspect credit target and scoring basis
2 invoke credit evaluation runtime
3 persist credit outcome
4 preserve audit and lineage trace

success_condition:
- credit handling completed explicitly

failure_condition:
- invalid target
- scoring basis unresolved
- runtime or persistence failure
