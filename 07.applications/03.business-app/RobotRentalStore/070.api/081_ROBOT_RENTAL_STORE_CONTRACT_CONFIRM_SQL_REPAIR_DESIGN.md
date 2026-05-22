# RobotRentalStore Contract Confirm SQL Repair Design

## Status
- status: repair
- target: RobotRentalStore API
- scope: confirmContract only

## Failure
The previous confirm SQL reached PostgreSQL as:

DO $

This is invalid PostgreSQL dollar quoting.

## Repair
Do not use PL/pgSQL DO block.

Use normal SQL CTEs:
- target: lock quoted contract for owner
- upd: update quoted -> confirmed
- hist: insert quoted -> confirmed status history
- period: insert pending worker_rental_period
- select result

## Safety
- no schema change
- no RLS change
- no delete
- no debug UI
- no AICompanyManager
- no ERP
