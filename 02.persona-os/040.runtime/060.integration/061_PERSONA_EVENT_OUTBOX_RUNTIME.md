# PERSONA EVENT OUTBOX RUNTIME

status: canonical
layer: runtime
domain: integration
owner: Boss
prepared_by: Zero

## RUNTIME STEPS
1. PersonaOS state changes are committed
2. corresponding sync event is written to outbox
3. dispatcher publishes event
4. downstream ack or retry state is recorded
5. failed delivery remains retryable
