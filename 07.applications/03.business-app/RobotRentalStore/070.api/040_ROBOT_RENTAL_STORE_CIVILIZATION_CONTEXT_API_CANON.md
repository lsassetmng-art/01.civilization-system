# RobotRentalStore civilization_id API Context Canon

## Status
- status: canon
- apply_status: not_applied

## 1. Purpose
RobotRentalStore is a BusinessOS user-facing rental app.
Its owner scope is civilization_id.

## 2. Catalog endpoint
Catalog read:
- can remain global/read-only
- does not require owner_civilization_id

## 3. Quote endpoint
Dry-run quote:
- no DB write
- owner_civilization_id optional for preview

Persistent quote:
- owner_civilization_id required
- app.current_civilization_id required

## 4. Confirm endpoint
Contract confirm:
- owner_civilization_id required
- app.current_civilization_id required
- payment/user binding required before production

## 5. Company context
target_company_id:
- optional target
- not owner

erp_company_id:
- optional ERP handoff target
- not owner
