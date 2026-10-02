# AIWorkerOS API Append: Runtime Execution Complete Contract

status: active
phase: runtime execution complete
scope: AIWorkerOS only

## Conceptual endpoints

- POST /aiworker/v1/runtime-execution/request/start
- POST /aiworker/v1/runtime-execution/worker-output
- POST /aiworker/v1/runtime-execution/leader-review
- POST /aiworker/v1/runtime-execution/manager-gate
- POST /aiworker/v1/runtime-execution/president-approval
- POST /aiworker/v1/runtime-execution/delivery-ready
- GET  /aiworker/v1/runtime-execution/pipeline-board

## DB function backing

- aiworker.fn_runtime_execution_start_request(...)
- aiworker.fn_runtime_execution_submit_worker_output(...)
- aiworker.fn_runtime_execution_submit_leader_review(...)
- aiworker.fn_runtime_execution_submit_manager_gate(...)
- aiworker.fn_runtime_execution_submit_president_approval(...)
- aiworker.fn_runtime_execution_mark_delivery_ready(...)

## Important

These endpoints are internal pipeline endpoints.

They do not:

- execute external APIs
- apply PG
- perform destructive action
- bypass review gates
- bypass human GO when required
