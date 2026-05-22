# WorkerRentalCore user_id to civilization_id Mapping Design

## Status
- status: design-only
- apply_status: not_applied
- owner: Boss
- prepared_by: Zero
- review: 佐藤(DB担当)

## 1. Purpose
WorkerRentalCore currently has several user_id-based tables.
BusinessOS canonical owner scope is civilization_id.

Before adding owner_civilization_id and RLS, we must identify a reliable mapping from existing user_id to civilization_id.

## 2. Required mapping
Required relationship:
- existing worker_rental_*.user_id
- canonical owner_civilization_id

## 3. Acceptable mapping sources
Acceptable:
- a user/profile/account table that has both user_id and civilization_id
- an app identity table that has stable one-to-one mapping
- an auth profile mirror that is already BusinessOS canonical

Not acceptable:
- company_id
- AICompanyManager company_id
- ERP company_id
- target_company_id
- display-only user name
- free-text metadata

## 4. Backfill rule
Do not backfill owner_civilization_id until:
- mapping source is selected
- all existing rental user_id values resolve to exactly one civilization_id
- unresolved user_id count is zero or explicitly handled
- duplicate conflicting mapping count is zero
- 佐藤(DB担当) review passes

## 5. Child table rule
Child tables such as:
- worker_rental_contract_line
- worker_rental_status_history

should receive owner_civilization_id from parent worker_rental_contract through rental_contract_id.

If orphan rows exist:
- do not auto-backfill
- report and resolve manually or archive by policy
