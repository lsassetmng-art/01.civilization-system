# ============================================================
# AICompanyManager Phase Z Delete Company Organization Roadmap
# ============================================================

app_name: AICompanyManager
display_name: AI企業運営アプリ
category: 03.business-app
phase: Phase Z
status: delete-company-organization-started
owner: Boss
prepared_by: Zero

## 1. Current Position

Phase Y reflected:
- company add/edit inside company dashboard
- organization tree add inside company dashboard
- organization unit add/edit inside company dashboard
- handoff additional file metadata support

Phase Z reflects:
- company delete
- organization delete

## 2. Review Inputs

追加修正:
- 会社は削除も欲しい
- 組織は削除も欲しい

## 3. Phase Z Scope

- add company delete operation inside company dashboard
- keep at least one company in local mock state
- confirm organization delete is represented as:
  - organization tree delete
  - organization unit delete
- add explicit delete design canon
- add implementation extension for company delete
- add verification script

## 4. Out of Scope

- DB write
- RLS apply
- live AIWorkerOS call
- server-side delete
- production audit delete trail
- git push
