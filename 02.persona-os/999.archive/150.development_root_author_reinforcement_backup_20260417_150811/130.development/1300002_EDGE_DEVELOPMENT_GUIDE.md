# PERSONA EDGE DEVELOPMENT GUIDE

status: implementation-ready-followup

scope:
- request acceptance
- signature verification
- dedupe key handling
- validation dispatch
- canonical apply dispatch
- result feedback persistence

required_delivery:
- exact endpoint contract
- idempotency handling
- retry-safe side effect boundary
- dead-letter handoff
- structured audit logging

do_not:
- do not mutate truth state directly in pre-validation path
- do not return ambiguous partial-success responses
