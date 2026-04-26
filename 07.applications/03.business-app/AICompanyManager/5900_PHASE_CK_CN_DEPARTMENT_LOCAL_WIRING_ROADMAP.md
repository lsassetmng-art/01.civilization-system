# AICompanyManager Phase CK-CN Department Local Wiring Roadmap

phase: Phase CK-CN
status: department-local-wiring-started
db_apply: false
rls_apply: false
real_api_connect: false
live_aiworkeros_call: false

## 目的

department actions を LocalRepository pilot 経由へ接続する。

## 対象

接続する:
- add-department
- save-department
- delete-department

維持する:
- company wiring

まだ接続しない:
- organization actions
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

- department local wiring JS がある
- new one-script bundle がある
- index.html がnew bundle 1本読み
- accepted UI文言が維持される
- company wiring marker が維持される
- department action wiring marker がある
- ApiRepository は disabled のまま
- 検証PASS
