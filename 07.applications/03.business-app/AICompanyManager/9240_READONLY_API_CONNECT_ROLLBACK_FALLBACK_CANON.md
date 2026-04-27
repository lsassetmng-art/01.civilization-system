# AICompanyManager Readonly API Connect Rollback Fallback Canon

phase: Phase HD
status: readonly-api-connect-rollback-fallback-canon

## 1. rollback対象

Rollback target:
- repository mode
- browser rendering source

Rollback to:
- LocalRepository

## 2. fallback条件

Fallback if:
- backend endpoint unavailable
- auth/session missing
- RLS forbidden unexpected
- malformed response
- mapping error
- browser fetch error
- timeout
- empty unexpected payload

## 3. rollback動作

Action:
- keep LocalRepository active
- preserve localStorage
- do not sync failed data
- do not write server
- do not start workflow
- do not call live AIWorkerOS

## 4. rollback対象外

Do not rollback:
- DB schema
- RLS
- existing DB apply
- design docs
- git history
