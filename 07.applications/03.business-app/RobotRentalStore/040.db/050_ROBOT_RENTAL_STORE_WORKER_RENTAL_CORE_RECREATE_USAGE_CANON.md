# RobotRentalStore usage of recreated WorkerRentalCore

## Status
- status: canonical-proposal
- apply_status: not_applied

## Read catalog
RobotRentalStore catalog remains global/read-only:
- business.robot_pool
- business.robot_placement_role_catalog
- aiworker/cx reference views

## Quote
Dry-run quote:
- no DB write
- owner_civilization_id optional for preview

Persistent quote:
- must use owner_civilization_id from X-Civilization-Id / app.current_civilization_id
- must not trust request-body owner_civilization_id alone

## Contract confirm
Contract confirm:
- must insert worker_rental_contract.owner_civilization_id
- must create lines/status history with same owner_civilization_id
- must not use company_id as owner

## Company
target_company_id and erp_company_id may be used for company/ERP target only.
