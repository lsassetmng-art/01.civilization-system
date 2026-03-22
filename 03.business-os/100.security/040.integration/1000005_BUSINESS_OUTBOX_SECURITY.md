# BUSINESS OUTBOX SECURITY

status: canonical
layer: security
domain: integration
owner: Boss
prepared_by: Zero

## RULES
- outbound requests must be authenticated
- request replay must be prevented by idempotency key
- payload integrity must be auditable
- unauthorized growth request generation is prohibited
