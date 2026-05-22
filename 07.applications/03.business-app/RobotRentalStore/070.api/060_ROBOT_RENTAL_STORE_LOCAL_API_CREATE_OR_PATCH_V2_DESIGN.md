# RobotRentalStore Local API Create-or-patch v2 Design

## Status
- status: implementation-recovery
- target: RobotRentalStore
- DB write: none
- API write: quote dry-run only

## Purpose
Create RobotRentalStore local API if missing, and include civilization_id context support from the start.

## Behavior
Catalog:
- GET /api/v1/business/robot-rental/catalog
- reads business.robot_pool
- read-only
- no civilization context required

Model detail:
- GET /api/v1/business/robot-rental/models/{model_code}
- read-only

Quote:
- POST /api/v1/business/robot-rental/quote
- dry-run
- no DB persistence
- accepts X-Civilization-Id
- valid UUID returns owner_civilization_id and persist_allowed=true
- missing UUID remains dry-run but persist_allowed=false
- invalid UUID fails

## Scope
This phase does not apply DB migration and does not persist contracts.
