# PERSONA OUTBOX POLICY

status: implementation-ready-followup

outbox_rules:
- outbox is retry-safe only
- payload must be correlation-traceable
- delivery attempts must be counted
- dead-letter transition must be auditable
