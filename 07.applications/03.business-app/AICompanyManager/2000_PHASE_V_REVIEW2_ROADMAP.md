# ============================================================
# AICompanyManager Phase V Review2 Roadmap
# ============================================================

app_name: AICompanyManager
display_name: AI企業運営アプリ
category: 03.business-app
phase: Phase V
status: review2-reflection-started
owner: Boss
prepared_by: Zero

## 1. Current Position

Phase U reflected:
- multiple companies
- organization settings
- robot naming
- horizontal dashboard
- settings screen
- AI auto review
- human delivery-only gate
- handoff oneblock

Phase V reflects the second review.

## 2. Review2 Inputs

修正:
- 旧画面が上に残っている
- 設定を反映できない
- 引き継ぎは複数必要な場合がある
- 方針だけでなく、タスクの引き継ぎの場合もある
- 組織は AIWorker から選べる
- このアプリはシステム用なので、今のところ課金は考えない

## 3. Phase V Scope

- replace index.html with clean single-screen app
- remove old screen from primary render path
- make settings editable and reflected in dashboard
- allow multiple handoff packages
- support handoff types
- add AIWorker selection catalog
- remove pricing / billing concepts from UI and design
- add Phase V test

## 4. Out of Scope

- DB write
- RLS apply
- live AIWorkerOS call
- billing
- deployment
- git push
