# AICompanyManager LocalRepository Rollback Plan

phase: Phase FW
status: local-repository-rollback-plan

## 1. 目的

readonly API connect が失敗した場合、即座に LocalRepository active 状態へ戻せるようにする。

## 2. rollback対象

Rollback target:
- repository mode

Keep:
- localStorage state
- final local bundle
- index.html script count = 1

## 3. rollback trigger

Rollback if:
- API bootstrap returns error
- auth/session error
- RLS forbidden unexpected
- malformed response
- network failure
- rendering failure
- response mapping failure

## 4. rollback action

Action:
- set repository mode back to local
- do not erase localStorage
- do not auto-sync failed data
- show fallback warning
- keep candidate JS disabled if needed

## 5. rollback success condition

Success:
- UI renders using LocalRepository
- existing local data remains
- no duplicate server write
- no review action triggered
- no workflow start triggered

## 6. rollback limitation

Rollback does not:
- rollback DB/RLS apply
- delete DB data
- undo schema
- call rollback SQL

DB rollback is separate dangerous operation.
