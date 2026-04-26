# ============================================================
# AICompanyManager Phase AN Split Add/Edit Flow Roadmap
# ============================================================

app_name: AICompanyManager
phase: Phase AN
status: split-add-edit-flow-started

## 1. Purpose

AI企業設定と新規追加を別ボタン・別画面に分離する。
部門・組織も詳細画面と追加/変更/削除画面を分離する。

## 2. Requirements

AI企業ダッシュボード:
- 会社概要カード右下に AI企業設定 ボタン
- 会社概要カード右下に AI企業新規追加 ボタン
- 部門一覧カード右下に 部門詳細 ボタン
- 部門一覧カード右下に 部門追加 ボタン
- 組織一覧カード右下に 組織詳細 ボタン
- 組織一覧カード右下に 組織追加 ボタン

AI企業設定:
- 会社変更
- 会社削除
- 会社共通ルール管理
- 新規追加は含めない

AI企業新規追加:
- 会社追加専用

部門詳細:
- 部門選択
- 部門内容表示
- 部門変更/削除へのボタン
- 部門追加は別画面

組織詳細:
- 組織選択
- 組織内容表示
- 組織変更/削除へのボタン
- 組織追加は別画面

## 3. Empty Company Fix

When a new company has no departments:
- dashboard must not crash
- department detail must show empty state
- department add must be reachable
- task ledger must show department-required message
- organization detail must show empty state
- organization add must require target department or ask to create department first

## 4. Safety

DB WRITE:
- NOT EXECUTED

RLS APPLY:
- NOT EXECUTED

LIVE AIWORKEROS CALL:
- NOT EXECUTED

GIT PUSH:
- NOT EXECUTED
