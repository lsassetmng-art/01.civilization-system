# AICompanyManager Phase QO-QR API/JWT grant repair smoke roadmap

## Phase
- QO-QR

## Previous failure
QJ-QM failed with:
- permission denied for schema business

## Cause
After strict tenant RLS cutover, authenticated role had strict policies, but lacked required PostgreSQL privileges:
- USAGE on schema business
- EXECUTE on helper functions
- table privileges required before RLS can evaluate access

## This phase
- Add minimal GRANTs required for authenticated strict RLS use.
- Do not change RLS policies.
- Do not re-apply RLS.
- Do not write data.
- Re-run read-only JWT claim simulation smoke.
- Push evidence.

## Not executed
- DB data write
- RLS apply
- policy create/drop
- FORCE RLS
- curl
- API call
