# ============================================================
# EXTERNAL GROWTH REQUEST CONSUME OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for consuming external OS growth requests
inside PersonaOS.

operation_steps:
1 detect pending inbox request
2 validate source and payload
3 route to growth consume runtime
4 record consumed, rejected, failed, or dead-lettered outcome
5 preserve retry-safe state and traceability

success_condition:
- request handled idempotently
- outcome persisted
- audit and operation trace preserved

failure_condition:
- request could not be classified safely
- downstream growth apply boundary failed
- retry metadata could not be persisted
