# AICompanyManager Phase BY-CB Action Handlers Ready Roadmap

phase: Phase BY-CB
status: action-handlers-ready-started
db_apply: false
rls_apply: false
real_api_connect: false
live_aiworkeros_call: false

## 目的

accepted UIのhandleActionを将来分離するため、payload builder / category handler / action router のskeletonを作成し、one-script bundleへ同梱する。

## 今回まとめる範囲

Phase BY:
- action payload builder

Phase BZ:
- category action handlers

Phase CA:
- action router skeleton

Phase CB:
- one-script bundle更新と回帰チェック

## 実行しないこと

- DB WRITE
- RLS APPLY
- psql
- real API connect
- live AIWorkerOS call
- accepted handleAction置換
- DB migration

## 完了条件

- payload builder JS がある
- category action handler JS がある
- action router JS がある
- new one-script bundle がある
- index.html がnew bundle 1本読み
- accepted UI文言が維持される
- APIRepository は disabled のまま
- 検証PASS
