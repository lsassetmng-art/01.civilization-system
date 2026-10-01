# AICompanyManager Worker update rollback smoke scope

## In scope
- Confirm current Worker placement exists.
- Confirm alternate BusinessOS DB Worker candidate exists.
- Start BusinessOS _aiworker API.
- Call combined rollback smoke with Worker update scenario.
- Verify response indicates rollback/smoke success.

## Out of scope
- Persistent update.
- Direct /company-robot/update save.
- RLS change.
- DB DDL.
- DELETE.
- Quantity consumption.
