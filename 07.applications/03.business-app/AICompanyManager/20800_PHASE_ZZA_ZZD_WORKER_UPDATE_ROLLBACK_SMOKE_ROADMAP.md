# AICompanyManager Phase ZZA-ZZD Worker update rollback smoke roadmap

## Current state
- President payload preview: OK
- Manager payload preview: OK
- Leader payload preview: OK
- Worker payload preview: OK
- Worker change selector: BusinessOS DB candidates only
- Combined rollback smoke: PASS

## This phase
Run a Worker placement update rollback smoke.

## Safety policy
- Do not call persistent update endpoint directly.
- Use combined rollback smoke only.
- DB WRITE: ROLLBACK ONLY
- API WRITE: ROLLBACK SMOKE ONLY
- RLS APPLY: NOT EXECUTED
- FORCE RLS: NOT EXECUTED
- DELETE: NOT EXECUTED
- quantity_consumption: false
