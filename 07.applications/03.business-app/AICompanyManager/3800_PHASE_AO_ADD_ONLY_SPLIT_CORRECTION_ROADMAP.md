# ============================================================
# AICompanyManager Phase AO Add-Only Split Correction Roadmap
# ============================================================

app_name: AICompanyManager
phase: Phase AO
status: add-only-split-correction-started

## 1. Correction

Only "add/new" operations are separated into dedicated screens for departments and organizations.

## 2. Company

Company flow remains:

- AI企業設定
- AI企業新規追加

These are separate screens.

## 3. Department

Department flow:

- AI企業ダッシュボード 部門一覧:
  - 部門詳細 button
  - 新規追加 button
- 部門追加:
  - separate screen
- 部門詳細:
  - department selection
  - current department display
  - department update
  - department delete

Do not require separate user-facing department edit/delete screens.

## 4. Organization

Organization flow:

- AI企業ダッシュボード 組織一覧:
  - 組織詳細 button
  - 新規追加 button
- 組織追加:
  - separate screen
- 組織詳細:
  - organization selection
  - current organization display
  - organization update
  - organization delete
  - robot placement update

Do not require separate user-facing organization edit/delete screens.

## 5. Empty Company Fix

A newly added company may have no departments.

Required:
- dashboard must not crash
- 部門一覧 shows empty state
- 部門追加 remains reachable
- 部門別タスク台帳 shows department-required message until a department exists

## 6. Safety

DB WRITE:
- NOT EXECUTED

RLS APPLY:
- NOT EXECUTED

LIVE AIWORKEROS CALL:
- NOT EXECUTED

GIT PUSH:
- NOT EXECUTED
