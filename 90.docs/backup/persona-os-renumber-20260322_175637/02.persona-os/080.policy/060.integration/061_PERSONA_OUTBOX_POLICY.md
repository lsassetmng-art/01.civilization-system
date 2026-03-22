# PERSONA OUTBOX POLICY

status: canonical
layer: policy
domain: integration
owner: Boss
prepared_by: Zero

## RULES
- downstream state must be synchronized through outbox events
- direct downstream mutation is prohibited
- sync payloads must contain only mirrorable data
- dispatch failure must remain observable and retryable
