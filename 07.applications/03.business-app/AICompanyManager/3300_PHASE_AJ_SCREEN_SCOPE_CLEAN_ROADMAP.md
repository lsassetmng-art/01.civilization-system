# ============================================================
# AICompanyManager Phase AJ Screen Scope Clean Roadmap
# ============================================================

app_name: AICompanyManager
phase: Phase AJ
status: screen-scope-clean-started

## 1. 目的

会社ダッシュボードに不要な操作パネルが出る問題を修正する。

## 2. 修正対象

会社ダッシュボードに出さない:
- CSVアップロード
- CSVプレビュー
- CSV取込
- 配布操作
- 台帳行の変更
- 台帳行の削除

正しい配置:
- CSVアップロード / プレビュー / 取込: 部門別タスク台帳
- 台帳行の追加 / 変更 / 削除: 部門別タスク台帳
- ManagerからLeaderへ配布: 部門受信箱
- LeaderからWorkerへ配布: 部門受信箱
- CSV作成プロンプト: CSV作成テンプレ
- 仕事パケット作成: 仕事操作
- 会社共通ルール: 会社共通ルール

## 3. 実装方針

- MutationObserverを使わない
- 画面ごとに明示描画する
- index.htmlのscriptは1本だけにする
- 会社ダッシュボードは概要専用に戻す

## 4. Safety

DB WRITE:
- NOT EXECUTED

RLS APPLY:
- NOT EXECUTED

LIVE AIWORKEROS CALL:
- NOT EXECUTED

GIT PUSH:
- NOT EXECUTED
