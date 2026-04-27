# AICompanyManager Phase IS-IV Ledger All Check Auto Repair No Python Roadmap

phase: Phase IS-IV repair
status: ledger-all-check-auto-repair-no-python-started
db_write: true
db_write_persisted: false
transaction: rollback
rls_apply: false
psql: true
write_api_connect: true
browser_write_fetch: true
backend_db_write: true
review_action: false
csv_import: false
workflow_start: false
live_aiworkeros_call: false
git_push: false

## 目的

ledger write rollback smoke の CHECK constraint failure をまとめて修正する。

## 修正対象

- priority
- responsible_role
- task_status
- work_type

## 方針

- DBのCHECK制約から許容値を自動取得
- Pythonは使わない
- sedで server JS を修正
- rollback transaction の smoke のみ実行
- 永続DB書き込みは残さない
