# ============================================================
# MARKETPLACE SELLER RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for seller account, creator profile, payout profile, and tax profile handling.

runtime_scope:
- validate seller target
- validate owner, payout, and tax basis
- update seller lifecycle state
- preserve seller traceability

trigger_conditions:
- seller submitted
- seller approved
- creator profile approved
- payout profile approved
- seller suspended

processing_steps:
1 resolve seller or profile target
2 verify owner, payout, tax, and policy basis
3 apply seller state transition
4 persist seller result
5 preserve audit and seller trace

state_transition:
- draft -> approved
- approved -> active
- active -> suspended
- active -> revoked

success_condition:
- marketplace seller lifecycle updated explicitly

failure_condition:
- invalid target
- owner, payout, tax, or policy basis unresolved
- persistence failure
