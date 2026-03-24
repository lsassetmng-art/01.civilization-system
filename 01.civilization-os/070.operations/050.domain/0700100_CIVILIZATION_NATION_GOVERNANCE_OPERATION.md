# ============================================================
# CIVILIZATION NATION GOVERNANCE OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the operational handling of nation governance actions.

operation_scope:
- inspect governance request
- verify approval state
- invoke nation state update runtime
- preserve governance traceability

operation_steps:
1 resolve governance target nation
2 verify approval and authority scope
3 validate governing constitutional basis
4 invoke nation state update runtime
5 persist governance result and audit trace

success_condition:
- nation governance action executed once under explicit authority
- decision trace preserved

failure_condition:
- approval missing
- authority scope invalid
- runtime execution failed
- persistence failed
