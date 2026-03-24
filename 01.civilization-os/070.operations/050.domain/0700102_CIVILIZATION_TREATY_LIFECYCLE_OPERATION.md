# ============================================================
# CIVILIZATION TREATY LIFECYCLE OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for treaty lifecycle changes.

operation_scope:
- inspect treaty target
- verify governance basis
- invoke treaty activation runtime
- preserve treaty traceability

operation_steps:
1 resolve target treaty version
2 verify treaty governance basis
3 invoke treaty lifecycle runtime
4 persist treaty status transition
5 preserve treaty and audit trace

success_condition:
- treaty lifecycle state updated explicitly

failure_condition:
- invalid treaty target
- missing governance basis
- runtime or persistence failure
