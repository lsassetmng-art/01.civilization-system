# WorkerRentalCore civilization_id DB Design

## Status
- status: design-only
- apply_status: not_applied

## Canonical owner
- owner_civilization_id uuid

## Existing user_id
Existing user_id columns may remain for compatibility.
They are not the canonical BusinessOS owner boundary.

## Proposed additions
Add owner_civilization_id to:
- worker_rental_contract
- worker_rental_period
- worker_rental_usage_log
- worker_rental_end_summary
- worker_rental_safety_event
- worker_rental_payment_intent
- worker_rental_entitlement_grant
- worker_rental_entitlement_balance
- worker_rental_entitlement_usage
- worker_rental_contract_line
- worker_rental_status_history

Optional target fields:
- target_company_id
- erp_company_id

Only add these where company/ERP targeting is needed.

## Catalog exceptions
Do not require civilization_id on:
- worker_rental_unit_policy
- global pricing/catalog/rule views

Those are shared catalog/policy data, not user-owned transaction data.
