# AIWorkerOS Model Append: Runtime Execution HTTP API Fix

status: active
phase: runtime execution http api fix
scope: AIWorkerOS only

## Fixed

The previous HTTP API server passed SQL through `psql -c`.

In Termux/local smoke, psql variable expressions such as:

- :'app_surface_code'

were not substituted and reached PostgreSQL directly.

The server now passes SQL through stdin to psql.

## Result

POST /aiworker/v1/runtime-execution/request can create an internal Runtime Execution request.

## Boundary

The fix does not enable:

- external API execution
- PG apply
- destructive action
