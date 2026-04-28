# AICompanyManager Worker update rollback smoke R2 scope

## In scope
- Confirm existing Worker placement exists.
- Confirm alternate Worker robot_pool candidate exists.
- Start BusinessOS _aiworker API.
- Call combined rollback smoke with Worker update scenario.
- Verify rollback/smoke success.

## Out of scope
- Persistent update.
- Direct /company-robot/update save.
- RLS change.
- DB DDL.
- DELETE.
- Quantity consumption.
