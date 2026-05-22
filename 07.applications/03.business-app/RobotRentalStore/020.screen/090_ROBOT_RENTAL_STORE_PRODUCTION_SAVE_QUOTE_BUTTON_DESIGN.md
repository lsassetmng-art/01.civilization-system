# RobotRentalStore Production Save Quote Button Design

## Status
- status: implementation
- target: ui/static/index.html

## Production UI rule
Do not show development-only controls on the user screen.

Remove from the user screen:
- API base input
- civilization id input
- rollback smoke button
- no_persist display
- persist_allowed display
- raw technical flags

Production actions:
- 見積を保存
  - endpoint: POST /api/v1/business/robot-rental/quote/persist
  - creates worker_rental_contract
  - creates worker_rental_contract_line
  - creates worker_rental_status_history
  - owner_civilization_id comes from session/header context

Not yet implemented:
- contract confirm
- payment
- RLS
