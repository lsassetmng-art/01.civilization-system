# AICompanyManager Write API Scope Canon

phase: Phase HM
status: write-api-scope-canon
write_api_connect: false

## 1. write API の初期対象

Initial write API candidates:
- company save
- company common rules save
- department create/update/delete-or-archive
- organization create/update/delete-or-archive
- ledger row create/update/delete-or-archive

## 2. 初期対象外

Excluded from first write API phase:
- review action
- CSV import
- workflow start
- live AIWorkerOS call
- AI auto assignment execution
- Manager/Leader/Worker live automation

## 3. 書き込み方式

Required:
- backend API経由
- validation
- idempotency key
- audit record
- RLS/RPC boundary
- LocalRepository fallback and rollback plan

## 4. ブラウザで禁止

Browser must not:
- hold service role
- directly bypass RLS
- directly write privileged membership
- directly call live AIWorkerOS
- directly finalize review

## 5. 現在の判定

write API connect:
- STOP
