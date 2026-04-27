# AICompanyManager Phase JQ-JT Department Parent Company Quote Repair No Python Roadmap

phase: Phase JQ-JT repair
status: department-parent-company-quote-repair-no-python-started
parent_company_id: 00000000-0000-4000-8000-1db11893cb24
db_write: true
persistent_db_write: true
rls_apply: false
psql: true
write_api_connect: true
browser_write_fetch: true
backend_db_write: true
department_persistent_write: true
organization_persistent_write: false
ledger_persistent_write: false
review_action: false
csv_import: false
workflow_start: false
live_aiworkeros_call: false
git_push: false

## 目的

department persistent write smoke の parent company_id SQL quote 不備を Python なしで修正する。

## 原因

PL/pgSQL内で parent company_id が二重引用符になり、PostgreSQL が列名として解釈した。

## 修正

- server JS の buildSql 内で v_company_id_text を SQL文字列として埋め込む
- Python 不使用
- sed のみ使用
- department persistent write smoke を再実行
- organization / ledger / review / CSV / workflow / live AIWorkerOS は実行しない
