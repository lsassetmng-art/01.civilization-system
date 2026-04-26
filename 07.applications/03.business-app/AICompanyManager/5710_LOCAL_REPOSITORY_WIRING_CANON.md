# AICompanyManager Local Repository Wiring Canon

phase: Phase CC
status: local-repository-wiring-canon
real_api_connect: false

## 1. 方針

LocalRepository を既定repositoryとして使う。

ただし、accepted UI の handleAction 本体は今回置換しない。

## 2. 目的

次のPhaseで安全に handleAction を分割接続できるようにする。

## 3. 今回の実装

- window.AICM.localWiringPilot を作る
- LocalRepository runtime を作る
- company handlers を作る
- department handlers を作る
- 接続確認用 selfCheck を作る

## 4. 画面への影響

画面構成は変更しない。

top-level:
- AI企業ダッシュボード
- 部門別タスク台帳
- レビュー・承認待ち一覧

## 5. 禁止

- real API connect
- DB connect
- MutationObserver
- 複数script
- Manager/Leader/Worker手動操作画面追加
