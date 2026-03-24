# ============================================================
# CIVILIZATION TENDER RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for tender planning and bidding.

runtime_scope:
- validate tender target
- validate budget and qualification basis
- update notice, submission, and evaluation state
- preserve tender traceability

trigger_conditions:
- plan approved
- notice published
- bid submitted
- evaluation completed
- tender cancelled

processing_steps:
1 resolve tender target and source plan
2 verify budget basis and supplier qualification basis
3 apply tender lifecycle state transition
4 persist tender result
5 preserve audit and tender trace

success_condition:
- tender lifecycle updated explicitly

failure_condition:
- invalid target
- budget or qualification basis unresolved
- persistence failure
