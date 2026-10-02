# AIWorkerOS Integration Append: Runtime Execution App API Reference Surface

status: active
phase: runtime execution app api
scope: AIWorkerOS only

## App-facing read payload

Applications should use:

- aiworker.vw_app_aiworker_runtime_execution_app_read_payload_v1

## Full pipeline board

Applications may use:

- aiworker.vw_app_aiworker_runtime_full_pipeline_board_v1

## API contract view

Applications and endpoint implementations should read:

- aiworker.vw_app_aiworker_runtime_execution_api_contract_v1

## Endpoint readiness

- aiworker.vw_app_aiworker_runtime_execution_endpoint_ready_v1

## Persistent smoke board

- aiworker.vw_app_aiworker_runtime_execution_persistent_smoke_board_v1

## Boundary

This phase prepares app-facing read payload and endpoint contracts.

It does not implement HTTP transport.
It does not execute curl.
It does not call external APIs.
