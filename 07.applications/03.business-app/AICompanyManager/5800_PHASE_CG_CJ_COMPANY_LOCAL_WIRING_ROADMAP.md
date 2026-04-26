# AICompanyManager Phase CG-CJ Company Local Wiring Roadmap

phase: Phase CG-CJ
status: company-local-wiring-started
db_apply: false
rls_apply: false
real_api_connect: false
live_aiworkeros_call: false

## 目的

company actions だけを LocalRepository pilot 経由へ接続する。

## 対象

接続する:
- add-company
- save-company
- delete-company
- add-common-rules

まだ接続しない:
- department actions
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

- company local wiring JS がある
- new one-script bundle がある
- index.html がnew bundle 1本読み
- accepted UI文言が維持される
- company action wiring marker がある
- ApiRepository は disabled のまま
- 検証PASS
