# AICompanyManager Phase NM-NP live AIWorkerOS phase fix retry roadmap

## Previous result
- NH-NK returned HTTP 400.
- Response error_code: INVALID_PHASE.
- Message: phase must be live_aiworkeros_call.

## Fix
Set request payload phase to the exact canonical value:
- live_aiworkeros_call

## Not executed
- DB write
- psql
- RLS apply
- git push
