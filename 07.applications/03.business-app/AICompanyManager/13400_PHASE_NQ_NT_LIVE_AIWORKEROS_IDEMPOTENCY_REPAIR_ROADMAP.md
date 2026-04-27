# AICompanyManager Phase NQ-NT live AIWorkerOS idempotency repair roadmap

## Previous result
- ND-NG-L returned 401 before auth.
- NH-NK returned 400 INVALID_PHASE.
- NM-NP fixed phase but returned 409.
- 409 is treated as idempotency conflict caused by previous same key with different payload.

## Repair
- Keep phase as live_aiworkeros_call.
- Use a new repair-only Idempotency-Key.
- Execute one curl POST only.

## Not executed
- DB write
- psql
- RLS apply
- git push
