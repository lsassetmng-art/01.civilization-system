# RobotRentalStore Rental Start Endpoint Design

## Status
- status: implementation
- endpoint: POST /api/v1/business/robot-rental/rentals/start

## Purpose
Move a confirmed rental contract into active rental state.

## Required
- X-Civilization-Id header
- rental_contract_id
- target contract must belong to owner_civilization_id
- target contract must be contract_status = confirmed
- target contract must have payment intent

## Behavior
On success:
- worker_rental_contract.contract_status becomes active
- worker_rental_period.period_status becomes active
- worker_rental_period.actual_started_at is set
- worker_rental_status_history records confirmed -> active
- local placeholder payment intent moves pending -> authorized

## Not implemented yet
- external payment provider
- payment capture/settlement
- rental end
- rental cancel
- RLS

## Safety
- owner_civilization_id comes from trusted API context
- company_id is not owner
- no hard delete
