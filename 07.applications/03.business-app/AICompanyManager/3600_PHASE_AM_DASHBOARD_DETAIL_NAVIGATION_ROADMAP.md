# ============================================================
# AICompanyManager Phase AM Dashboard Detail Navigation Roadmap
# ============================================================

app_name: AICompanyManager
phase: Phase AM
status: dashboard-detail-navigation-started

## 1. Purpose

AI企業設定をトップタブから外し、AI企業ダッシュボードからボタン遷移する構成に変更する。

## 2. Top-Level Tabs

Show only:

- AI企業ダッシュボード
- 部門別タスク台帳
- レビュー・承認待ち一覧

Do not show as top tab:

- AI企業設定

## 3. AI企業ダッシュボード

AI企業ダッシュボード shows:

- 会社概要
  - right-bottom button: AI企業設定
- 部門一覧
  - right-bottom button: 部門詳細
- 組織一覧
  - right-bottom button: 組織詳細
- 全体状況

## 4. Detail Screens

部門詳細:
- select department
- show selected department details
- right-bottom buttons:
  - 部門追加
  - 部門変更
  - 部門削除
- add / update / delete open separate screens

組織詳細:
- select organization
- show selected organization details
- right-bottom buttons:
  - 組織追加
  - 組織変更
  - 組織削除
- add / update / delete open separate screens
- robot placement is edited in organization add/update screens

## 5. AI企業設定

AI企業設定 is a separate screen reached from dashboard company overview.

It contains:
- company add
- company update
- company delete
- company common rules

## 6. Safety

DB WRITE:
- NOT EXECUTED

RLS APPLY:
- NOT EXECUTED

LIVE AIWORKEROS CALL:
- NOT EXECUTED

GIT PUSH:
- NOT EXECUTED
