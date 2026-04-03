# ============================================================
# MARKETPLACE GAME LISTING RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for game product, listing, and purchase linkage handling.

runtime_scope:
- validate marketplace target
- validate seller, product, listing, and GameOS title basis
- enforce idempotent purchase-to-entitlement linkage
- preserve marketplace traceability

trigger_conditions:
- product submitted
- listing approved
- listing published
- purchase completed
- entitlement linkage requested

processing_steps:
1 resolve product, listing, or linkage target
2 verify seller, product, listing, title, and purchase basis
3 verify idempotency basis where applicable
4 apply marketplace state transition
5 persist marketplace result
6 preserve audit and marketplace trace

state_transition:
- draft -> approved
- approved -> published
- published -> suspended
- published -> revoked
- pending -> linked
- pending -> failed
- linked -> reversed

success_condition:
- marketplace game listing lifecycle handled once effectively

failure_condition:
- invalid target
- seller, listing, title, or purchase basis unresolved
- duplicate effective purchase linkage
- persistence failure
