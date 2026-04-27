# AICompanyManager Readonly API Connect Final GO/STOP

phase: Phase GX
status: readonly-api-connect-final-go-stop
current_decision: STOP

## 1. 現在の判定

readonly API connect:
- STOP

理由:
- Boss implementation OK / API接続 OK / readonly API OK が未記録

## 2. GO条件

readonly API connect に進むには、Bossが以下のいずれかを明示する。

Required phrase:
- implementation OK
- API接続 OK
- readonly API OK

## 3. GO後に許可される範囲

Allowed after GO:
- backend readonly adapter real connection
- GET /api/aicm/v1/bootstrap
- browser fetch for readonly bootstrap
- response mapping to UI state
- LocalRepository fallback test

## 4. GO後も禁止

Still forbidden:
- write API
- review action API
- csv import API
- workflow start API
- live AIWorkerOS call
- service role in browser
