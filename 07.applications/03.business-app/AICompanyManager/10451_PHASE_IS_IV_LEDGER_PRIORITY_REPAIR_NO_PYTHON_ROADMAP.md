# AICompanyManager Phase IS-IV Ledger Priority Repair No Python Roadmap

phase: Phase IS-IV repair
status: ledger-priority-repair-no-python-started
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

ledger write rollback smoke の priority CHECK constraint failure を Python なしで修正する。

## 原因

business.aicm_department_task_ledger.priority に normal を入れたが、priority check constraint に合わなかった。

## 修正方針

- sed だけで server JS 内の priority 文字列値を normal から medium に修正
- rollback smoke の範囲は維持
- 永続DB書き込みは残さない
- review / CSV / workflow / live AIWorkerOS は実行しない
