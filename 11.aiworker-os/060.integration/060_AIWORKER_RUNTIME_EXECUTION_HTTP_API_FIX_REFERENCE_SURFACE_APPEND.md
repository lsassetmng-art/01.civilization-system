# AIWorkerOS Integration Append: Runtime Execution HTTP API Fix Reference Surface

status: active
phase: runtime execution http api fix
scope: AIWorkerOS only

## Runtime HTTP API implementation

Implementation root:

- ~/03.civilization-development/11.aiworker-os/runtime-execution-http-api

Main server:

- server.js

## Fix

psql SQL is passed through stdin.

Do not use `psql -c` for SQL strings that depend on psql variables.

## Smoke endpoints

- GET /health
- GET /aiworker/v1/runtime-execution/api-contract
- GET /aiworker/v1/runtime-execution/endpoint-ready
- GET /aiworker/v1/runtime-execution/persistent-smoke
- POST /aiworker/v1/runtime-execution/request
- GET /aiworker/v1/runtime-execution/app-read-payload
- GET /aiworker/v1/runtime-execution/pipeline-board
- GET /aiworker/v1/runtime-execution/delivery
