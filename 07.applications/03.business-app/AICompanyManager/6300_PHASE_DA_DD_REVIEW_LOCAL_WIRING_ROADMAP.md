# AICompanyManager Phase DA-DD Review Local Wiring Roadmap

phase: Phase DA-DD
status: review-local-wiring-started
db_apply: false
rls_apply: false
real_api_connect: false
live_aiworkeros_call: false

## 目的

review actions を LocalRepository pilot 経由へ接続する。

## 対象

接続する:
- approve-review
- reject-review
- request-review-revision

維持する:
- company wiring
- department wiring
- organization wiring
- ledger wiring
- csv wiring

まだ接続しない:
- workflow actions
- live AIWorkerOS call

## 実行しないこと

- DB WRITE
- RLS APPLY
- psql
- real API connect
- live AIWorkerOS call
- DB migration

## 完了条件

- review local wiring JS がある
- new one-script bundle がある
- index.html がnew bundle 1本読み
- accepted UI文言が維持される
- company / department / organization / ledger / csv wiring marker が維持される
- review action wiring marker がある
- ApiRepository は disabled のまま
- 検証PASS
