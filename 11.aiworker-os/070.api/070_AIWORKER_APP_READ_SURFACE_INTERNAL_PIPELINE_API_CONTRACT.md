# AIWorkerOS API Contract: App Read Surface for Internal Pipeline

## Status

active-read-only

## Purpose

Expose the accepted President / Manager / Worker / Leader internal pipeline to an application as a read-only payload.

## Contract

contract_code:

- APP_READ_PRESIDENT_WLM_INTERNAL_PIPELINE_V1

app_surface_code:

- aiworker_internal_pipeline_dashboard

## Read views

- aiworker.vw_app_aiworker_read_surface_contract_v1
- aiworker.vw_app_aiworker_internal_pipeline_dashboard_v1
- aiworker.vw_app_aiworker_internal_pipeline_plan_detail_v1
- aiworker.vw_app_aiworker_internal_pipeline_payload_v1

## Payload

The payload contains:

- contract
- pipeline
- safety
- plans
  - worker
  - leader
  - manager_gate
  - safety

## Allowed

- read internal pipeline state
- display DELIVERY_READY_INTERNAL plans
- display Worker mock output
- display Leader mock review
- display Manager final gate summary

## Not allowed

- write
- external execution
- PG apply
- destructive action
- contract finalization
- formal external sending
