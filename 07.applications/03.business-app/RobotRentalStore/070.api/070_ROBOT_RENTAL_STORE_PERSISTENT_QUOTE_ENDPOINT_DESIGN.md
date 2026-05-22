# RobotRentalStore Persistent Quote Endpoint Design

## Status
- status: implementation
- app_code: RobotRentalStore
- DB write path: implemented
- RLS: not enabled yet

## Endpoint

POST /api/v1/business/robot-rental/quote/persist

Purpose:
- persist a quoted rental contract into WorkerRentalCore
- insert worker_rental_contract
- insert worker_rental_contract_line
- insert worker_rental_status_history

Required:
- X-Civilization-Id header
- model_code
- role_code
- rental_unit
- duration_quantity
- quantity

Owner:
- owner_civilization_id comes from trusted API context
- request body owner_civilization_id is not trusted

Status:
- contract_status = quoted

## Smoke endpoint

POST /api/v1/business/robot-rental/quote/rollback-smoke

Purpose:
- execute same insert chain inside transaction
- rollback at end
- verify write path without leaving rows

## Safety
- no RLS enable in this phase
- no payment
- no contract confirm
- no ERP
- no AICompanyManager
