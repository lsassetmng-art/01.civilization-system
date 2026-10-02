# AIWorkerOS API Append: Runtime Execution App API Contract

status: active
phase: runtime execution app api
scope: AIWorkerOS only

## Conceptual endpoints

POST /aiworker/v1/runtime-execution/request

- backing: aiworker.fn_runtime_execution_create_request(...)
- idempotency required
- internal write allowed
- external execution blocked
- PG apply blocked
- destructive action blocked

GET /aiworker/v1/runtime-execution/pipeline-board

- backing: aiworker.vw_app_aiworker_runtime_full_pipeline_board_v1
- read only

GET /aiworker/v1/runtime-execution/app-read-payload

- backing: aiworker.vw_app_aiworker_runtime_execution_app_read_payload_v1
- read only

GET /aiworker/v1/runtime-execution/delivery

- backing: aiworker.vw_app_aiworker_runtime_delivery_board_v1
- read only

## Environment placeholder

Future HTTP endpoint may use:

- PERSONA_AIWORKEROS_BASE_URL
- PERSONA_AIWORKEROS_AUTH_TOKEN

## Not executed in this phase

- HTTP server implementation
- curl smoke
- external API execution
