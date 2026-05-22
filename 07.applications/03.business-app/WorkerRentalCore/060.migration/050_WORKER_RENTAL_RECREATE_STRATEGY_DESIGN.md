# WorkerRentalCore Recreate Strategy Design

## Status
- status: proposal
- apply_status: not_applied
- owner: Boss
- prepared_by: Zero
- review: 佐藤(DB担当)

## 1. Decision
Because current worker_rental_* transactional tables are empty, prefer recreate over ALTER.

Reason:
- no historical rows
- no backfill needed
- cleaner canonical DDL
- avoids legacy user_id-only shape
- owner_civilization_id can be first-class from the beginning

## 2. Target scope
Recreate user-owned WorkerRentalCore tables:
- worker_rental_contract
- worker_rental_contract_line
- worker_rental_period
- worker_rental_usage_log
- worker_rental_end_summary
- worker_rental_safety_event
- worker_rental_payment_intent
- worker_rental_entitlement_grant
- worker_rental_entitlement_balance
- worker_rental_entitlement_usage
- worker_rental_status_history

Keep or recreate catalog/policy table:
- worker_rental_unit_policy

Views:
- recreate after tables
- v_worker_rental_contract_summary
- v_worker_rental_entitlement_balance_active
- v_worker_rental_monthly_free_ticket_rule

## 3. Canonical owner
Canonical owner column:
- owner_civilization_id uuid not null

Legacy compatibility:
- user_id may remain nullable for old API compatibility
- user_id is not the ownership boundary

Company context:
- target_company_id nullable
- erp_company_id nullable
- company_id is not primary owner

## 4. RLS
Do not enable RLS in the recreate apply step.

RLS later:
- after RobotRentalStore persistent quote/contract write path is complete
- after app.current_civilization_id write smoke passes
- after 佐藤(DB担当) review

## 5. Safety
Recreate SQL must:
- confirm all target tables are empty before DROP
- run in a transaction
- be separate from RLS
- not touch AICompanyManager
- not touch ERP
