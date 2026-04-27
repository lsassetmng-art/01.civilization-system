# AICompanyManager Phase TE-TH-REVISED robot responsibility UI repair roadmap

## Phase
- TE-TH-REVISED

## Boss correction
- President robot must be configured on AI企業設定 screen.
- Company business policy must be instructable to the President robot.
- Organization robot placement must be launched from each organization card add button.
- Robots assignable to organizations must come from robots registered in Business tables.
- Arbitrary free-text robot creation is not allowed.

## This phase
- Replace the earlier generic robot-add local fallback direction with corrected UI responsibility.
- Add AI企業設定 local fallback section for:
  - President robot selection
  - company business policy instruction to President
- Add organization card local fallback section for:
  - organization robot placement through organization card button
  - robot selection from Business registered robot catalog local mirror
- Hide superseded generic robot-add fallback panels if they exist.
- Keep index.html script count as 1.

## Not executed
- DB write
- psql
- API write
- RLS apply
- policy change
- persistent President setting
- persistent organization robot placement
