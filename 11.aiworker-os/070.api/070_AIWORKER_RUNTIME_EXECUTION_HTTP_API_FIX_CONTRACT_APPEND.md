# AIWorkerOS API Append: Runtime Execution HTTP API Fix Contract

status: active
phase: runtime execution http api fix
scope: AIWorkerOS only

## POST request create

POST /aiworker/v1/runtime-execution/request

Required:

- Authorization: Bearer token
- Idempotency-Key header or idempotency_key body
- app_surface_code
- model_code
- task_domain_code
- task_title
- task_instruction_ja

Expected:

- 201 Created
- request_id returned
- safety flags remain false

## Important implementation note

The Node.js server must send SQL to psql through stdin.

Avoid `psql -c` for variable-substituted SQL.
