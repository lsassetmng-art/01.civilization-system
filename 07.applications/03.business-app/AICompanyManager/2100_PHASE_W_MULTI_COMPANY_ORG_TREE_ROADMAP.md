# ============================================================
# AICompanyManager Phase W Multi Company Organization Tree Roadmap
# ============================================================

app_name: AICompanyManager
display_name: AI企業運営アプリ
category: 03.business-app
phase: Phase W
status: multi-company-org-tree-started
owner: Boss
prepared_by: Zero

## 1. Current Position

Phase V reflected:
- clean single screen
- settings reflection
- multiple handoff packages
- task handoff
- AIWorker selection
- system-use no billing

Phase W reflects the next review.

## 2. Review Inputs

修正:
- 会社が複数追加できない
- 組織要員が追加できない
- 組織ツリーも会社内で複数持つ

## 3. Phase W Scope

- add company creation in UI
- add multiple organization trees per company
- add organization unit creation per tree
- allow selecting parent unit to form tree
- allow selecting AIWorker for each organization unit
- reflect company / tree / unit changes in dashboard
- update mock data and test

## 4. Out of Scope

- DB write
- RLS apply
- live AIWorkerOS call
- billing
- deployment
- git push
