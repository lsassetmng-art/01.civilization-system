# ============================================================
# AICompanyManager Phase U Review Reflection Roadmap
# ============================================================

app_name: AICompanyManager
display_name: AI企業運営アプリ
category: 03.business-app
phase: Phase U
status: review-reflection-started
owner: Boss
prepared_by: Zero

## 1. Current Position

Completed before Phase U:
- app skeleton
- mock implementation
- AIWorkerOS bridge placeholder
- delivery flow
- final handoff
- design and implementation repo push synced

Current phase:
- reflect user review feedback into design and implementation prototype

## 2. Review Inputs

追加仕様:
- ユーザーは会社を複数持つ場合がある
- 会社名を設定する
- 事業領域を設定する
- ロボット命名を設定する
- 組織はユーザーが自分で設定する
- 組織はワンラインだけではない
- 途中の仕事も引き継ぎたい
- 設計や開発途中でも引き継ぎワンブロックで続けたい

修正:
- 会社ダッシュボードは縦ではなく横並び
- 方針入力は設定画面を別途用意
- ロール進行は会社ダッシュボードの2列目に入れる
- レビュー操作は不要
- AIがレビューを自動実施する
- 人間は納品時のみ確認する
- ローカルキューは見ても理解しづらいためユーザー面から外す
- 各項目ごとに折りたためるとよい

## 3. Phase U Scope

Create or update:
- multi-company and organization settings design
- handoff material design
- UI revision canon
- automated review and delivery-only human gate design
- revised mock data
- revised horizontal dashboard UI
- collapsible UI sections
- Phase U verification script

## 4. Out of Scope

Phase U does not:
- apply RLS
- modify DB
- call live AIWorkerOS
- deploy
- perform git push

## Phase U Check Keywords

- 複数会社
- 会社を複数持つ
- 会社名
- 事業領域
- ロボット命名
