# AICompanyManager Phase YR-YU preview role canonical robot resolver roadmap

## Current state
- President payload: OK
- Leader payload: OK
- Worker payload: OK
- Manager payload: still blocked because selected robot is legacy local Manager Alpha.

## Root cause
The preview resolver returned selectedRobot if robotId() was truthy.
Legacy local IDs such as aiw-manager-001 are truthy but are not canonical BusinessOS DB robot_pool UUIDs.

## This phase
- Replace preview resolver decision order.
- Accept selected robot only when:
  - robot_pool_id is UUID
  - selected option text contains BusinessOS DB
- If selected value is legacy/local, ignore it.
- Then resolve from visible existing assignment.
- If still unresolved, select first role-compatible BusinessOS DB robot from STATE.robots.
- No DB write.

## Not executed
- DB write
- DB DDL
- API write
- RLS apply
- quantity consumption
- main UI JS change
