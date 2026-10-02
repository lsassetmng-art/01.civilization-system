# live AIWorkerOS call implementation gate

## Current implementation status

- Endpoint contract: defined
- Endpoint implementation: not yet created
- Endpoint URL: not yet available
- live AIWorkerOS call: not executed
- RLS apply: not executed
- DB write: not executed
- psql: not executed
- curl: not executed
- API call: not executed

## Live call gate

A caller may execute live AIWorkerOS call only when one of these is available:

- PERSONA_AIWORKEROS_BASE_URL
- AIWORKEROS_BASE_URL
- PERSONA_BASE_URL
- PERSONAOS_BASE_URL
- PERSONA_API_BASE_URL

and the endpoint path exists:

POST /aicm/v1/workflow-start/live-aiworkeros-call

## Required smoke before production

1. Endpoint returns 202 Accepted for valid payload.
2. Endpoint rejects missing auth in production mode.
3. Endpoint rejects invalid workflow_run_id.
4. Endpoint handles duplicate Idempotency-Key safely.
5. Endpoint does not apply RLS.
6. Endpoint does not mutate caller DB rows outside allowed AIWorkerOS request log.

## Blocked behavior

If endpoint URL is not available:

- live AIWorkerOS call must be recorded as BLOCKED_BY_MISSING_ENDPOINT.
- Do not invent URL.
- Do not call PERSONA_DATABASE_URL as HTTP endpoint.
