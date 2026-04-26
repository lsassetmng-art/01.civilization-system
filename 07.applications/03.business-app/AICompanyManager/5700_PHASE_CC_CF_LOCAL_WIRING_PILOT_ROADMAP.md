# AICompanyManager Phase CC-CF Local Wiring Pilot Roadmap

phase: Phase CC-CF
status: local-wiring-pilot-started
db_apply: false
rls_apply: false
real_api_connect: false
live_aiworkeros_call: false
accepted_handleAction_replacement: false

## 目的

accepted UI を壊さず、LocalRepository を company / department action に接続できる状態へ進める。

## 今回まとめる範囲

Phase CC:
- LocalRepository wiring design final

Phase CD:
- company action LocalRepository pilot

Phase CE:
- department action LocalRepository pilot

Phase CF:
- one-script bundle更新とaccepted UI回帰チェック

## 実行しないこと

- DB WRITE
- RLS APPLY
- psql
- real API connect
- live AIWorkerOS call
- accepted handleAction本体置換
- DB migration

## 完了条件

- local wiring pilot JS がある
- company/department action pilot がある
- new one-script bundle がある
- index.html がnew bundle 1本読み
- accepted UI文言が維持される
- ApiRepository は disabled のまま
- 検証PASS
