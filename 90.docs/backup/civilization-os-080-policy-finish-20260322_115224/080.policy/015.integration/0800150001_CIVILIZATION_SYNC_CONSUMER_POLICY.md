# CIVILIZATION SYNC CONSUMER POLICY

status: canonical
layer: policy
domain: integration
owner: Boss
prepared_by: Zero

## RULES
- Persona mirrored state must be updated only from approved sync events
- invalid or unverifiable payload must not mutate local truth
- failed sync consumption must remain observable and retryable
- revoked Persona rights state must disable Civilization-side usage
