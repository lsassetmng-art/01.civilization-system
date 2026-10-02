# live AIWorkerOS call security, idempotency, and boundary

## Security

Production calls require:

- HTTPS endpoint
- Authorization bearer token
- Idempotency-Key
- JSON content type
- request size limit
- server-side validation of company and workflow scope

## Idempotency

Canonical idempotency key:

aicm-live-aiworkeros-<workflow_run_id>

If the same idempotency key is received with the same payload:

- return the previous accepted or completed result.

If the same idempotency key is received with different payload:

- return 409 Conflict.

## Worker boundary

Only Ai(robot) workers are eligible for dispatched AI employee execution.

Ai(human) is not eligible for dispatched AI employee execution.

## Data boundary

The caller sends IDs and execution request context.

The caller does not send DB credentials.

The endpoint must never receive:

- PERSONA_DATABASE_URL
- DATABASE_URL
- service role key
- raw DB password
- Supabase JWT secrets

## Forbidden endpoint actions

The live call endpoint must not:

- apply RLS
- change database schema
- delete data
- perform unapproved external calls
- mutate caller ledger, review, or workflow source rows unless separately defined
- perform PG apply
- perform destructive action

## Allowed endpoint actions

The live call endpoint may:

- validate payload
- create AIWorkerOS request log
- assign ai_robot worker
- enqueue execution
- return accepted or completed response
- store AIWorkerOS-side execution metadata
