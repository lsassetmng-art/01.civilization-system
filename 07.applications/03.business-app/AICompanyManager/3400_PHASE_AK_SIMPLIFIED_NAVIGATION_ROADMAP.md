# ============================================================
# AICompanyManager Phase AK Simplified Navigation Roadmap
# ============================================================

app_name: AICompanyManager
phase: Phase AK
status: simplified-navigation-started

## 1. Purpose

ユーザー操作画面を最小化する。

## 2. Top-Level Screens

Keep only:

- AI企業設定
- 会社ダッシュボード
- 部門別タスク台帳
- レビュー・承認待ち一覧

## 3. Removed Top-Level Screens

Remove as independent top-level tabs:

- 会社共通ルール
- 仕事操作
- 部門受信箱
- CSV作成テンプレ
- 引き継ぎ

## 4. Screen Responsibilities

AI企業設定:
- company add / update / delete
- company common rules as one company item

会社ダッシュボード:
- company overview
- overall status
- department list
- department detail
- operation entrances
- department organization tree
- organization add / update / delete
- robot placement

部門別タスク台帳:
- ledger list
- ledger add / update / delete
- CSV preview / import
- CSV template / prompt copy

レビュー・承認待ち一覧:
- AI auto-reviewed items
- delivery candidates
- approval waiting items
- rejected items
- final delivery approval

## 5. Workflow Rule

Manager / Leader / Worker screens are not routine user operation.

Automatic AI workflow:
- Manager receives department task ledger rows
- Manager breaks down and allocates to Leaders
- Leaders break down and allocate to Workers
- Workers create deliverables
- AI review creates delivery candidates

## 6. Safety

DB WRITE:
- NOT EXECUTED

RLS APPLY:
- NOT EXECUTED

LIVE AIWORKEROS CALL:
- NOT EXECUTED

GIT PUSH:
- NOT EXECUTED
