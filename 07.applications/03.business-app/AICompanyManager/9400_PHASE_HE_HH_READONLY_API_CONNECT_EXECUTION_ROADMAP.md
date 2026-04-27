# AICompanyManager Phase HE-HH Readonly API Connect Execution Roadmap

phase: Phase HE-HH
status: readonly-api-connect-execution-started
boss_implementation_ok: true
api_connect_ok: true
readonly_api_ok: true
db_write: false
rls_apply: false
psql_readonly: true
real_api_connect: true
fetch_smoke: true
backend_db_connect: true
live_aiworkeros_call: false
git_push: false

## 目的

Boss OK を受け、readonly API connect を最小範囲で実行する。

## 今回まとめる範囲

Phase HE:
- Boss OK record
- environment gate

Phase HF:
- backend readonly bootstrap smoke server
- backend DB readonly connect

Phase HG:
- GET /api/aicm/v1/bootstrap fetch smoke
- response shape validation

Phase HH:
- LocalRepository fallback維持確認
- no-write gate
- completion report

## 実行すること

- backend readonly DB read
- readonly HTTP bootstrap smoke
- fetch API smoke through localhost
- response shape validation

## 実行しないこと

- DB WRITE
- RLS APPLY
- schema change
- write API
- review action
- CSV import
- workflow start
- live AIWorkerOS call
- git push
