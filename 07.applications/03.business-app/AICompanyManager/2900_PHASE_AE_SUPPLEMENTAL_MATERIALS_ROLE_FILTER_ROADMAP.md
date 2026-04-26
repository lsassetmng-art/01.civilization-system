# ============================================================
# AICompanyManager Phase AE Supplemental Materials Role Filter Roadmap
# ============================================================

app_name: AICompanyManager
display_name: AI企業運営アプリ
category: 03.business-app
phase: Phase AE
status: supplemental-materials-role-filter-started
owner: Boss
prepared_by: Zero

## 1. Current Position

Phase AD renamed the department design document ledger to:

- 部門別タスク台帳

Phase AE reflects the latest review:

- "添付ファイル" should be renamed to "補足資料"
- department instruction should select robots from the selected department and selected role
- role and robot selection must not mismatch

## 2. Scope

Phase AE updates:

- 部門別タスク台帳 UI wording
- 参照ファイル / 補足資料 distinction
- supplemental_materials state field
-担当ロール based robot candidate filtering
- Manager / Leader / Worker candidate selection markers
- integrated design regeneration

## 3. Canon

参照ファイル:
- materials read before or during work as decision basis
- examples: design document, specification, company rule, development rule, error log, test result

補足資料:
- optional supporting materials attached to the task
- examples: memo, screenshot, draft, example, extra context, previous note

## 4. Out of Scope

- DB write
- RLS apply
- live AIWorkerOS call
- server upload
- production storage
- git push
