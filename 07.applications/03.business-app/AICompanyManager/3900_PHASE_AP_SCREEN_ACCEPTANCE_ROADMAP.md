# ============================================================
# AICompanyManager Phase AP Screen Acceptance Roadmap
# ============================================================

app_name: AICompanyManager
phase: Phase AP
status: screen-acceptance-started

## 1. Purpose

Record that the current AICompanyManager screen structure is accepted.

## 2. Accepted Screen Structure

Top-level tabs:

- AI企業ダッシュボード
- 部門別タスク台帳
- レビュー・承認待ち一覧

Dashboard button navigation:

- 会社概要 -> AI企業設定
- 会社概要 -> AI企業新規追加
- 部門一覧 -> 部門詳細
- 部門一覧 -> 新規追加
- 組織一覧 -> 組織詳細
- 組織一覧 -> 新規追加

Company flow:

- AI企業設定 and AI企業新規追加 are separate screens

Department flow:

- only 部門追加 is separated
- 部門詳細 contains select / view / update / delete

Organization flow:

- only 組織追加 is separated
- 組織詳細 contains select / view / update / delete / robot placement update

## 3. Acceptance

User confirmed:

- 画面はOK

## 4. Safety

DB WRITE:
- NOT EXECUTED

RLS APPLY:
- NOT EXECUTED

LIVE AIWORKEROS CALL:
- NOT EXECUTED

GIT PUSH:
- NOT EXECUTED
