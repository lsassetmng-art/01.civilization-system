# WorkerRentalCore owner_civilization_id Backfill Design

## Status
- status: proposal-only
- apply_status: not_applied

## 1. Migration sequence
1. Add owner_civilization_id columns.
2. Select verified user_id to civilization_id mapping source.
3. Backfill parent tables by user_id.
4. Backfill child tables by rental_contract_id parent join.
5. Verify unresolved rows = 0.
6. Add indexes.
7. Only after data is complete, enable RLS.
8. Only after stable operation, consider NOT NULL.

## 2. Parent backfill targets
- worker_rental_contract
- worker_rental_period
- worker_rental_usage_log
- worker_rental_end_summary
- worker_rental_safety_event
- worker_rental_payment_intent
- worker_rental_entitlement_grant
- worker_rental_entitlement_balance
- worker_rental_entitlement_usage

## 3. Child backfill targets
- worker_rental_contract_line
- worker_rental_status_history

## 4. RLS timing
Do not enable civilization_id RLS until backfill verification is complete.
