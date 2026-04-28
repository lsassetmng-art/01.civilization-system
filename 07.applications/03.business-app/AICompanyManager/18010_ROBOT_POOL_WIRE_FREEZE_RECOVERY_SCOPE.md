# AICompanyManager robot_pool wire freeze recovery scope

## In scope
- Stabilize DB-backed robot candidate UI.
- Remove repeat redraw loop.
- Keep BusinessOS DB read-only API usage.
- Keep normal AICompanyManager screens clean.
- Capture API body for diagnosis.

## Out of scope
- Persistent placement save.
- DB write.
- RLS change.
- Direct browser DB access.
- Quantity consumption.

## UI stability rule
Never update a select while:
- document.activeElement is that select
- user may be interacting with the dropdown

## DB/API rule
UI uses:
GET /api/aicm/business-robot-pool

The API reads:
- business.robot_pool
- business.robot_placement_role_catalog
