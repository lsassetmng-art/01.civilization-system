# AICompanyManager Readonly API Connect Next Command Start Conditions

phase: Phase HD
status: readonly-api-connect-next-command-start-conditions

## 1. 次に実行するPhase

Next actual connect phase:
- Phase HE-HH Readonly API Connect Execution

## 2. 開始条件

Required:
- Boss says implementation OK
- or Boss says API接続 OK
- or Boss says readonly API OK

## 3. 実行順序

1. Boss OK record
2. backend env gate
3. enable backend readonly adapter for GET only
4. run backend bootstrap readonly shape check
5. enable browser readonly fetch candidate
6. GET /api/aicm/v1/bootstrap
7. map response to UI state
8. verify LocalRepository fallback

## 4. まだ禁止

Even in HE-HH:
- write API
- review action
- CSV import
- workflow start
- live AIWorkerOS call
