# AICompanyManager Full Local Wiring Regression Canon

phase: Phase DF-DG
status: full-local-wiring-regression-canon

## 1. 画面維持

維持必須:
- AI企業ダッシュボード
- 部門別タスク台帳
- レビュー・承認待ち一覧

top tab に出さない:
- AI企業設定
- 会社共通ルール
- 仕事操作
- 部門受信箱
- CSV作成テンプレ
- 引き継ぎ

## 2. dashboard route

維持必須:
- AI企業設定
- AI企業新規追加
- 部門詳細
- 部門新規追加
- 組織詳細
- 組織新規追加

## 3. local wiring

維持必須:
- company wiring
- department wiring
- organization wiring
- ledger wiring
- csv wiring
- review wiring
- workflow local stub wiring

## 4. no connect

維持必須:
- real API connect false
- live AIWorkerOS call false
- DB apply false
- RLS apply false
- ApiRepositoryStub disabled

## 5. technical

維持必須:
- index script count = 1
- MutationObserverなし
- allowNetwork true なし
