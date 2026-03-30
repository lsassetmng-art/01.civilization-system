# PERSONA GROWTH REQUEST CONSUME OPERATION

status: canonical
layer: operations
domain: integration
owner: Boss
prepared_by: Zero

## OPERATION
- read pending inbound growth requests
- validate and deduplicate
- apply growth update
- write result event to outbox
- keep failed processing retryable
