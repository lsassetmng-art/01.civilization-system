# AICompanyManager Phase IS-IV Ledger Write API Rollback Smoke Roadmap

phase: Phase IS-IV
status: ledger-write-api-rollback-smoke-started
db_write: true
db_write_persisted: false
transaction: rollback
rls_apply: false
psql: true
write_api_connect: true
browser_write_fetch: true
backend_db_write: true
company_support_row: rollback_only
department_support_row: rollback_only
ledger_write: true
review_action: false
csv_import: false
workflow_start: false
live_aiworkeros_call: false
git_push: false

## 目的

organization write rollback smoke PASS 後、基本 write API 最終スコープとして ledger write API rollback smoke を実行する。

## 今回の範囲

Phase IS:
- ledger write rollback scope

Phase IT:
- localhost POST smoke

Phase IU:
- rollback validation

Phase IV:
- next scope separation gate

## 実行すること

- rollback transaction 内で smoke company support row を作る
- rollback transaction 内で smoke department support row を作る
- rollback transaction 内で ledger insert smoke を行う
- transaction は必ず rollback
- 永続DB書き込みは残さない

## 実行しないこと

- persistent DB write
- review action
- CSV import
- workflow start
- live AIWorkerOS call
- git push
