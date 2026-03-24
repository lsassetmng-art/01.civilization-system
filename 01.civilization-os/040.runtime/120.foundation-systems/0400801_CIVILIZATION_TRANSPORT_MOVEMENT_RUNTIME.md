# ============================================================
# CIVILIZATION TRANSPORT MOVEMENT RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for transport movement handling.

runtime_scope:
- validate movement target
- validate corridor legality
- enforce idempotent movement
- persist movement result

trigger_conditions:
- movement scheduled
- corridor approved
- movement completed
- failure or reversal reported

processing_steps:
1 resolve corridor and movement target
2 verify legal basis and idempotency basis
3 apply movement state transition
4 persist movement result
5 preserve traceability

success_condition:
- movement recorded once effectively

failure_condition:
- invalid corridor
- duplicate effective movement
- persistence failure
