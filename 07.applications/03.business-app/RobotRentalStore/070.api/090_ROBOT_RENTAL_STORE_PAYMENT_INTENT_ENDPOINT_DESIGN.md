# RobotRentalStore Payment Intent Endpoint Design

## Status
- status: implementation
- endpoint: POST /api/v1/business/robot-rental/payments/intent/create

## Purpose
Create a payment intent placeholder for a confirmed rental contract.

## Required
- X-Civilization-Id header
- rental_contract_id
- target contract must belong to owner_civilization_id
- target contract must be contract_status = confirmed

## Behavior
- If a pending payment intent already exists for the contract, return it.
- If none exists, create business.worker_rental_payment_intent.
- payment_status = pending
- provider_code = local_placeholder
- provider_reference = robot-rental-local-{contract_id}

## Not implemented yet
- external payment provider
- capture/settlement
- rental runtime start
- RLS
