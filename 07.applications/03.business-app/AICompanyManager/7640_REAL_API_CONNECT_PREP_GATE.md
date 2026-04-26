# AICompanyManager Real API Connect Prep Gate

phase: Phase EV
status: real-api-connect-prep-gate
real_api_connect: false

## 1. 現在の判定

real API connect:
- STOP

## 2. real API connect に進む条件

Required:
- Boss implementation OK
- DB/RLS postcheck PASS
- API/RPC payload finalization reviewed
- ApiRepository adapter implementation plan reviewed
- auth/session handling reviewed
- RLS forbidden case handling reviewed
- rollback to LocalRepository plan
- no live AIWorkerOS call yet

## 3. 接続順序

Recommended:
1. API readonly bootstrap
2. company list/read
3. department/organization read
4. ledger read
5. company create via RPC
6. department/organization write
7. ledger write
8. review action via RPC
9. workflow local stub via RPC
10. live AIWorkerOS call in separate phase

## 4. Forbidden in first API phase

Do not start with:
- live AIWorkerOS call
- mass csv import write
- delete company
- direct membership manipulation
- direct review finalization without RPC
