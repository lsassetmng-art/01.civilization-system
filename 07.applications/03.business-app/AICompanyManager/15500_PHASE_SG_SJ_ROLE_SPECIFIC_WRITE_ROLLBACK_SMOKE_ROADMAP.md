# AICompanyManager Phase SG-SJ role-specific write rollback smoke roadmap

## Phase
- SG-SJ

## Current position
Completed:
- final release readiness package
- real API/JWT backend integration smoke
- strict tenant RLS final acceptance
- role-specific read acceptance smoke

## This phase
Run role-specific write rollback smoke under strict tenant RLS.

## Cases
- Manager ledger insert: expected ALLOW, then ROLLBACK
- Leader ledger insert: expected ALLOW, then ROLLBACK
- Worker ledger insert: expected DENY
- Reviewer review_action insert: expected ALLOW, then ROLLBACK
- Worker review_action insert: expected DENY

## Not executed
- persistent DB write
- DB DDL
- RLS apply
- policy change
- curl
- API call
