# Local Test Endpoint Implementation Note

## Scope

AIWorkerOS local test endpoint.

This is a local HTTP smoke implementation for the live AIWorkerOS call contract.

## Endpoint

POST /aicm/v1/workflow-start/live-aiworkeros-call

## Local base URL

http://127.0.0.1:8787

## Environment

- PERSONA_AIWORKEROS_BASE_URL
- PERSONA_AIWORKEROS_AUTH_TOKEN

## Behavior

The local endpoint validates:

- Authorization bearer token
- Idempotency-Key
- JSON payload
- source_app
- phase
- request_type
- workflow_run_id
- ai_robot worker target
- forbidden action boundary
- no RLS apply
- no caller DB write

## Non-goals

This local endpoint does not:

- connect to PostgreSQL
- use PERSONA_DATABASE_URL
- apply RLS
- mutate application DB rows
- execute real worker jobs
- call external services

## Usage

This endpoint is for local smoke testing before production endpoint implementation.
