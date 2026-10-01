# AICompanyManager Phase UZ-VC-RECOVERY robot reference actual UI wire roadmap

## Phase
- UZ-VC-RECOVERY

## Recovery reason
Previous UZ-VC failed and restored JS from backup.
Most likely cause:
- fragile exact string insertion target was not found after UI terminology / role allocation repairs.

## Recovery strategy
- Do not use fragile text target insertion.
- Use function boundary replacement by function name.
- Replace summary/helper functions directly:
  - aicmPresidentRobotSummary
  - aicmManagerRobotSummary
  - aicmLeaderRobotSummary
  - aicmSectionWorkerUi
- Insert robot reference helper into existing AICM helper area.
- Run node --check.
- Restore backup automatically on failure.

## Reference cards
Show robot reference cards for:
- President
- Manager
- Leader
- Worker

## Safety
- DB READ ONLY.
- DB DDL not executed.
- API write not executed.
- RLS apply not executed.
- Quantity consumption not executed.
- JS backup created.
