# ============================================================
# AICompanyManager INDEX
# ============================================================

app_name: AICompanyManager
display_name: AI企業運営アプリ
category: 03.business-app
phase: Phase AP
status: screen-accepted
owner: Boss
prepared_by: Zero

## Current Accepted UI

Top-level screens:

- AI企業ダッシュボード
- 部門別タスク台帳
- レビュー・承認待ち一覧

Accepted navigation canon:

- AI企業設定 is opened from AI企業ダッシュボード
- AI企業新規追加 is a separate screen
- 部門詳細 handles select/view/update/delete
- 部門追加 is a separate screen
- 組織詳細 handles select/view/update/delete/robot placement
- 組織追加 is a separate screen
- 部門別タスク台帳 is Manager intake ledger
- Manager/Leader/Worker workflow is automatic

## Latest Reports

- 3900_PHASE_AP_SCREEN_ACCEPTANCE_ROADMAP.md
- 3910_ACCEPTED_SCREEN_NAVIGATION_CANON.md
- 3990_PHASE_AP_SCREEN_ACCEPTANCE_COMPLETION_REPORT.md

## Safety

DB WRITE:
- NOT EXECUTED

RLS APPLY:
- NOT EXECUTED

LIVE AIWORKEROS CALL:
- NOT EXECUTED
