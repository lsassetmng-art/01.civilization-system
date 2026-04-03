# ============================================================
# CIVILIZATION CLAIM RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for insurance claim handling.

runtime_scope:
- validate claim target
- validate policy basis
- update claim state
- preserve claim traceability

trigger_conditions:
- claim filed
- claim reviewed
- claim approved
- claim rejected
- claim paid

processing_steps:
1 resolve claim target and source policy
2 verify policy validity and claim basis
3 apply claim state transition
4 persist claim result
5 preserve audit and policy trace

success_condition:
- claim lifecycle updated explicitly

failure_condition:
- invalid claim target
- policy basis missing
- persistence failure
