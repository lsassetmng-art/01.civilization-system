# AICompanyManager Local Wiring Final Acceptance Canon

phase: Phase DI
status: local-wiring-final-acceptance-canon

## 1. 受入対象

Final local bundle:

- phase-de-dh-workflow-final-local-ui.js
- phase-de-dh-workflow-final-local-ui.css
- index.html

## 2. 受入済み画面

top-level screens:
- AI企業ダッシュボード
- 部門別タスク台帳
- レビュー・承認待ち一覧

top-levelから除外:
- AI企業設定
- 会社共通ルール
- 仕事操作
- 部門受信箱
- CSV作成テンプレ
- 引き継ぎ

## 3. 受入済み動線

AI企業ダッシュボード:
- AI企業設定
- AI企業新規追加
- 部門詳細
- 部門新規追加
- 組織詳細
- 組織新規追加

部門別タスク台帳:
- 台帳追加
- 台帳変更
- 台帳削除
- CSV preview
- CSV import

レビュー・承認待ち一覧:
- 承認
- 差し戻し
- 修正依頼

## 4. local wiring accepted

Accepted local wiring:
- company wiring
- department wiring
- organization wiring
- ledger wiring
- csv wiring
- review wiring
- workflow local stub wiring

## 5. no-connect accepted

維持:
- real_api_connect: false
- live_aiworkeros_call: false
- db_apply: false
- rls_apply: false
- ApiRepositoryStub disabled

## 6. 技術条件

維持:
- index script count = 1
- MutationObserverなし
- allowNetwork trueなし
- DB接続なし
- API接続なし
- live AIWorkerOS callなし
