# AIWorkerOS Model Append: Runtime Execution App API

status: active
phase: runtime execution app api
scope: AIWorkerOS only

## Purpose

Connect Runtime Execution pipeline to app-facing read payloads and endpoint contracts.

## Main additions

Table:

- aiworker.runtime_execution_app_api_contract

Views:

- aiworker.vw_app_aiworker_runtime_execution_app_read_payload_v1
- aiworker.vw_app_aiworker_runtime_execution_api_contract_v1
- aiworker.vw_app_aiworker_runtime_execution_endpoint_ready_v1
- aiworker.vw_app_aiworker_runtime_execution_persistent_smoke_board_v1

## Persistent smoke

A single persistent smoke record is created with:

- idempotency_key: runtime-execution-persistent-smoke-v1
- model: BYD1-003 / ASIC Workers3
- app_surface: pg_development_support
- final status: INTERNAL_DELIVERY_READY

The smoke remains internal-only.

## Safety

The persistent smoke and app-facing payload do not perform:

- external execution
- PG apply
- destructive action
