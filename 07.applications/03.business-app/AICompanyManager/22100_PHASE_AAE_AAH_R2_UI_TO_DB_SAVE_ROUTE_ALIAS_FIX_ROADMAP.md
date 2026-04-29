# AICompanyManager Phase AAE-AAH-R2 UI to DB Save Route Alias Fix Roadmap

## Previous failure
The write API server started and health returned OK, but rollback smoke failed.

## Cause
The PL/pgSQL block used `r record` as a loop variable and also used `business.robot_pool r` as a SQL alias.
PostgreSQL treated `r` as ambiguous.

## Fix
Rename the robot_pool alias from `r` to `rp` in the write API SQL string.

## Safety
- DB WRITE: ROLLBACK ONLY
- API WRITE: ROLLBACK SMOKE ONLY
- UI persistent save route remains implemented
- RLS APPLY: NOT EXECUTED
- DELETE: NOT EXECUTED
