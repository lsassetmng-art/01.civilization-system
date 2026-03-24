# ============================================================
# GAME PERSONA ECONOMY RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for persona character binding, package projection,
purchase entitlement, and economy settlement handling.

runtime_scope:
- validate persona-economy target
- validate player, persona, contract, and purchase basis
- enforce idempotent projection and settlement
- preserve economy traceability

trigger_conditions:
- binding approved
- package projection requested
- entitlement approved
- settlement requested
- settlement reversed

processing_steps:
1 resolve binding, projection, entitlement, or settlement target
2 verify player, persona, package, and purchase basis
3 verify idempotency basis where applicable
4 apply persona-economy state transition
5 persist economy result
6 preserve audit and economy trace

state_transition:
- draft -> approved
- approved -> active
- active -> suspended
- active -> revoked
- pending -> projected
- projected -> reversed
- pending -> settled
- settled -> reversed
- pending -> failed

success_condition:
- game persona-economy lifecycle handled once effectively

failure_condition:
- invalid target
- player, persona, package, or purchase basis unresolved
- duplicate effective projection or settlement
- persistence failure
