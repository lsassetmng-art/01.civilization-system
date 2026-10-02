# AIWorkerOS Policy Append: Runtime Execution App API

status: active
phase: runtime execution app api
scope: AIWorkerOS only

## Policy

Runtime Execution App API contracts are app-facing surfaces for internal AIWorkerOS runtime execution state.

Allowed:

- create internal runtime execution request through approved function
- read runtime full pipeline board
- read app-facing payload
- read internal delivery status

Forbidden:

- external API execution
- PG apply
- destructive action
- bypass review gates
- bypass human GO
- expose DB secrets
- expose service role keys

## Persistent smoke

The persistent smoke exists for verification and endpoint-read testing.

It must remain:

- internal-only
- safe
- no external execution
- no PG apply
- no destructive action
