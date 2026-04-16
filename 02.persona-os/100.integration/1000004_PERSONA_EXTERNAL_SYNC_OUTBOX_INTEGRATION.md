# PERSONA EXTERNAL SYNC OUTBOX INTEGRATION

status: implementation-ready-followup

outbox_contract:
- enqueue normalized outbound message
- preserve correlation and attempt count
- retry only retry-safe deliveries
- move terminal failures to dead-letter

required_metadata:
- outbox_id
- message_type
- target_system_id
- correlation_id
- attempt_count
- next_attempt_at
