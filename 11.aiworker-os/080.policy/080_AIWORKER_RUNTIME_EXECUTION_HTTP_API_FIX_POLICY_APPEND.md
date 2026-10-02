# AIWorkerOS Policy Append: Runtime Execution HTTP API Fix

status: active
phase: runtime execution http api fix
scope: AIWorkerOS only

## Policy

The HTTP API fix is transport-layer repair only.

It must not alter runtime safety:

- external execution remains blocked
- PG apply remains blocked
- destructive action remains blocked

## Authentication

All runtime execution endpoints except /health require bearer token.

## Idempotency

Request create requires idempotency.
