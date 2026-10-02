# AIWorkerOS API Append: Runtime Execution Request Contract

status: active
phase: runtime execution request
scope: AIWorkerOS only

## Conceptual endpoint

POST /aiworker/v1/runtime-execution/request

## DB function backing

- aiworker.fn_runtime_execution_create_request(...)

## Request fields

- app_surface_code
- model_code
- task_domain_code
- task_title
- task_instruction_ja
- source_app_ref
- source_request_ref
- requested_by_ref
- idempotency_key

## Response concept

Returns:

- request_id
- request_code
- runtime control snapshot
- safety flags
- review gate status
- handoff packet status

## Important

This endpoint is internal-intake only.

It does not:

- execute external APIs
- apply PG
- mutate external systems
- perform destructive action
