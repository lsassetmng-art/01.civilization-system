# BUSINESS EVENT OUTBOX RUNTIME

status: canonical
layer: runtime
domain: integration
owner: Boss
prepared_by: Zero

## RUNTIME STEPS
1. Business event is committed
2. outbound eligibility is evaluated
3. canonical request payload is produced
4. outbox record is written
5. dispatcher publishes event
6. ack or retry state is recorded
