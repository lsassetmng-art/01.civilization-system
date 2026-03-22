# BUSINESS OUTBOX DISPATCH OPERATION

status: canonical
layer: operations
domain: integration
owner: Boss
prepared_by: Zero

## OPERATION
- read pending outbox events
- dispatch to PersonaOS
- record ack state
- keep failed delivery retryable
