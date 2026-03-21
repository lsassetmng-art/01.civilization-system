# BUSINESS SYNC CONSUMER POLICY

status: canonical
layer: policy
domain: integration
owner: Boss
prepared_by: Zero

## RULES
- Persona mirrored state must be updated only from approved sync events
- malformed or unverifiable payload must not mutate local truth
- failed sync consumption must remain observable and retryable
- BusinessOS must disable dependent Persona usage on invalid mirrored rights state
