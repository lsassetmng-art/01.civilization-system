# AICompanyManager Phase CO-CR Organization Local Wiring Roadmap

phase: Phase CO-CR
status: organization-local-wiring-started
db_apply: false
rls_apply: false
real_api_connect: false
live_aiworkeros_call: false

## 目的

organization actions を LocalRepository pilot 経由へ接続する。

## 対象

接続する:
- add-organization
- save-organization
- delete-organization

維持する:
- company wiring
- department wiring

まだ接続しない:
- ledger actions
- csv actions
- review actions

## 実行しないこと

- DB WRITE
- RLS APPLY
- psql
- real API connect
- live AIWorkerOS call
- DB migration

## 完了条件

- organization local wiring JS がある
- new one-script bundle がある
- index.html がnew bundle 1本読み
- accepted UI文言が維持される
- company wiring marker が維持される
- department wiring marker が維持される
- organization action wiring marker がある
- ApiRepository は disabled のまま
- 検証PASS
