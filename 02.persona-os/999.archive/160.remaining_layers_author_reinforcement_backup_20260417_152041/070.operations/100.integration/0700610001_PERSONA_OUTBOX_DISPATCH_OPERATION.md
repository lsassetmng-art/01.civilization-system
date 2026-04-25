# PERSONA OUTBOX DISPATCH OPERATION

status: canonical
layer: operations
domain: integration
owner: Boss
prepared_by: Zero

## PROCEDURE
- read pending outbox events
- publish payload to approved downstream target
- record dispatch result
- increment retry metadata on failure
- stop retry only on terminal invalid configuration
