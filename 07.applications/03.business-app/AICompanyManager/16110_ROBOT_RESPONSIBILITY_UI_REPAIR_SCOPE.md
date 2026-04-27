# AICompanyManager robot responsibility UI repair scope

## Correct UI responsibility

### AI企業設定
AI企業設定 owns:
- President robot setting
- company business policy instruction to President

### Organization card
Each organization card owns:
- organization robot placement
- add robot action from that organization card

### Business registered robot catalog
Assignable robots must come from Business registered robots.
This phase uses a local catalog mirror because DB/API persistent catalog read is not executed here.

## Local storage keys
- aicm.businessRegisteredRobots.v1
- aicm.companyPresidentRobot.v2
- aicm.companyPresidentPolicyInstruction.v1
- aicm.organizationCards.v1
- aicm.organizationRobotPlacements.v2

## Explicitly superseded
- free-text robot creation
- global top-level "add arbitrary robot" panel
- company President setting outside AI企業設定 screen

## Boundary
This phase is UI local fallback only.

## Future DB/API phase
Persistent integration requires separate approval:
Business registered robot catalog API connect OK
or
company President robot persistent write OK
or
organization robot placement persistent write OK
