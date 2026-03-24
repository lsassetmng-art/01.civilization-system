# ============================================================
# CIVILIZATION ESCALATION OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for governance escalation.

operation_steps:
1 inspect escalation trigger and source linkage
2 invoke escalation runtime
3 persist escalation result
4 preserve operator-visible escalation path

success_condition:
- escalation handled with preserved lineage

failure_condition:
- source linkage missing
- escalation runtime failed
- persistence failure
