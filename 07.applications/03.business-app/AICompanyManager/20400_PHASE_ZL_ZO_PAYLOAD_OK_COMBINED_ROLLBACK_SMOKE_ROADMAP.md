# AICompanyManager Phase ZL-ZO payload OK combined rollback smoke roadmap

## Current state
- President payload preview: OK
- Manager payload preview: OK
- Leader payload preview: OK
- Worker payload preview: OK

## This phase
- Keep UI code unchanged.
- Confirm required JS markers.
- Start local UI server.
- Start BusinessOS _aiworker API v3 server.
- Call combined rollback smoke endpoint.
- Confirm that API/ctx wrapper/RLS path can execute without persistent DB write.

## Execution policy
- DB persistent write: not executed.
- DB write is rollback-only inside smoke.
- RLS apply: not executed.
- FORCE RLS: not executed.
- DELETE: not executed.
- Quantity consumption: not executed.
