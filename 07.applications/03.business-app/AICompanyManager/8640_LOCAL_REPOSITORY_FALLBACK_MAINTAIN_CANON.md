# AICompanyManager LocalRepository Fallback Maintain Canon

phase: Phase GJ
status: local-repository-fallback-maintain-canon

## 1. 現在のactive

Active repository:
- LocalRepository

Active UI:
- final local bundle

## 2. fallback維持

API readonly candidate を作っても、LocalRepository fallback は必ず維持する。

## 3. fallback条件

Fallback if:
- backend endpoint missing
- auth/session error
- RLS forbidden
- malformed response
- empty unexpected response
- render mapping error
- network unavailable in future

## 4. fallback禁止事項

Fallback must not:
- erase localStorage
- auto-write to server
- duplicate review action
- start workflow
- call AIWorkerOS
- mutate DB

## 5. 現在の判定

LocalRepository fallback:
- maintained

ApiRepository readonly:
- candidate only

real API connect:
- STOP
