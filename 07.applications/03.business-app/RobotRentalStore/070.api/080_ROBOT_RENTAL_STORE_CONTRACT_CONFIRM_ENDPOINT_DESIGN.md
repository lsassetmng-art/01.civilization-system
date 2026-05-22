# RobotRentalStore Contract Confirm Endpoint Design

## Status
- status: implementation
- app_code: RobotRentalStore
- endpoint: POST /api/v1/business/robot-rental/contracts/confirm

## Purpose
Confirm a saved quote into a rental application contract.

## Required
- X-Civilization-Id header
- rental_contract_id
- target contract must belong to owner_civilization_id
- target contract must be contract_status = quoted

## Behavior
On success:
- worker_rental_contract.contract_status becomes confirmed
- worker_rental_status_history records quoted -> confirmed
- worker_rental_period is created with period_status = pending

## Not implemented yet
- payment
- external ERP transfer
- RLS
- actual runtime session start

## Safety
- owner_civilization_id comes from trusted API context
- company_id is not owner
- no hard delete
