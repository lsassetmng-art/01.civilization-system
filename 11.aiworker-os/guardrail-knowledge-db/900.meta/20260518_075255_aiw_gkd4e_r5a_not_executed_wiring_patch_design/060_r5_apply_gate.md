# GKD-4E-R5B Apply Gate

R5B_APPLY_ALLOWED=YES_AFTER_EXPLICIT_GO
R5_DESIGN_STATUS=READY_FOR_R5B_APPLY_AFTER_BOSS_GO

## Current guard

- CODE_PATCH=NO in R5A
- API_POST=NO
- DB_WRITE=NO
- GIT_PUSH=NO

## R5B requires explicit user GO

Required phrase:
R5B Go

## R5B must still not perform API POST

R5B should be syntax/scope patch only.
Runtime POST smoke must be R5C or later.
