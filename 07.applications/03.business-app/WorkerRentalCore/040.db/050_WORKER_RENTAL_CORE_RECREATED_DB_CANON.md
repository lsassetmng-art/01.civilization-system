# WorkerRentalCore Recreated DB Canon

## Status
- status: canonical-proposal
- apply_status: not_applied

## Core owner
All user-owned transaction/event/payment/ticket tables use:
- owner_civilization_id uuid not null

## Contract
worker_rental_contract is the parent table.

Required ownership:
- owner_civilization_id
- app_code
- service_code
- worker identity
- rental unit/count
- starts/ends
- price
- status

Optional:
- user_id legacy
- target_company_id
- erp_company_id

## Child/event/log tables
Child tables also duplicate owner_civilization_id for direct RLS and audit clarity.

## Delete rule
No hard delete in normal app flow.
Use status transitions:
- draft
- quoted
- confirmed
- active
- ended
- cancelled
- expired
- failed

## Catalog
worker_rental_unit_policy is global/policy data and does not need owner_civilization_id.
