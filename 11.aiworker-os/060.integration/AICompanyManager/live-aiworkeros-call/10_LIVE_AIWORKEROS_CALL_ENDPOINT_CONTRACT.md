# live AIWorkerOS call endpoint contract

## Canonical endpoint

POST /aicm/v1/workflow-start/live-aiworkeros-call

## Full URL form

{PERSONA_AIWORKEROS_BASE_URL}/aicm/v1/workflow-start/live-aiworkeros-call

## Endpoint owner

AIWorkerOS owns the live AI worker request contract.

Persona-side HTTP infrastructure may host or relay the route when AIWorkerOS live execution is exposed through Persona-side infrastructure.

## Caller

Approved application caller.

Example caller:

- AICompanyManager

## Callee

AIWorkerOS live worker request route, or Persona-side route that delegates to AIWorkerOS.

## Required headers

- Content-Type: application/json
- Authorization: Bearer <PERSONA_AIWORKEROS_AUTH_TOKEN>
- Idempotency-Key: aicm-live-aiworkeros-<workflow_run_id>

## Optional smoke behavior

For local smoke only, Authorization may be disabled by implementation configuration.

For production, Authorization is required.

## Accepted HTTP status

- 200 OK: synchronous handling completed
- 201 Created: request log created and accepted
- 202 Accepted: accepted for async worker handling
- 204 No Content: accepted with no response body

## Error HTTP status

- 400 Bad Request: malformed payload or missing required fields
- 401 Unauthorized: missing or invalid auth token
- 403 Forbidden: caller is not allowed for company, department, or workflow
- 404 Not Found: referenced workflow or source entity not found
- 409 Conflict: idempotency key conflict with different payload
- 422 Unprocessable Entity: workflow state cannot be started
- 500 Internal Server Error: server-side failure

## Required behavior

1. Validate Authorization unless smoke mode explicitly disables it.
2. Validate Idempotency-Key.
3. Validate source_app.
4. Validate workflow_run_id.
5. Validate company_id, department_id, and organization_id where applicable.
6. Accept only ai_robot worker execution target.
7. Create or reuse an AIWorkerOS request record.
8. Return accepted or completed response.
9. Do not apply RLS.
10. Do not mutate caller business tables unless explicitly designed in a separate endpoint.

## Non-goals

This endpoint does not:

- apply RLS
- change schema
- insert caller-side ledger rows
- import CSV
- start workflow DB row creation
- delete data
- call unapproved external services
