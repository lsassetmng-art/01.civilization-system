# WorkerRentalCore Empty-table No-backfill Closeout

## Status
- status: closeout
- apply_status: not_applied
- owner: Boss
- prepared_by: Zero
- review: 佐藤(DB担当)

## 1. Result
The user_id -> civilization_id mapping audit found no existing WorkerRentalCore rows.

Current existing data state:
- worker_rental_contract: 0
- worker_rental_period: 0
- worker_rental_usage_log: 0
- worker_rental_end_summary: 0
- worker_rental_safety_event: 0
- worker_rental_payment_intent: 0
- worker_rental_entitlement_grant: 0
- worker_rental_entitlement_balance: 0
- worker_rental_entitlement_usage: 0
- worker_rental_contract_line: 0
- worker_rental_status_history: 0

Therefore:
- no historical backfill is required
- no user_id -> civilization_id mapping source is required for existing rows
- future writes must set owner_civilization_id from API/session context

## 2. Canonical owner
BusinessOS rental data owner:
- owner_civilization_id

Legacy:
- user_id may remain for compatibility
- user_id is not canonical owner

Optional target:
- target_company_id may be used when rental is for a company target
- erp_company_id may be used when sending to ERP
- company_id is not the primary owner

## 3. Migration direction
Because all tables are empty:
1. Add owner_civilization_id columns.
2. Add indexes.
3. Update API context to require app.current_civilization_id for write flows.
4. Only then introduce persistent quote/contract confirm.
5. Enable RLS after insert path is civilization-aware.

## 4. No identity bridge needed now
An identity bridge is not required for current empty tables.

Create/identify identity bridge later only if:
- importing legacy user-owned data
- connecting auth user records to civilization_id
- migrating non-empty tables
- production auth claims do not directly contain civilization_id

## 5. Do not apply yet
This closeout does not apply DB changes.
DB changes require explicit approval and 佐藤(DB担当) review.
