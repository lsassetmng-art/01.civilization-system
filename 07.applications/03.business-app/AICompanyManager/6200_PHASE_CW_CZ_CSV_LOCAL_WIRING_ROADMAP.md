# AICompanyManager Phase CW-CZ CSV Local Wiring Roadmap

phase: Phase CW-CZ
status: csv-local-wiring-started
db_apply: false
rls_apply: false
real_api_connect: false
live_aiworkeros_call: false

## 目的

CSV actions を LocalRepository pilot 経由へ接続する。

## 対象

接続する:
- preview-csv
- import-csv

維持する:
- company wiring
- department wiring
- organization wiring
- ledger wiring

まだ接続しない:
- review actions
- workflow actions

## 実行しないこと

- DB WRITE
- RLS APPLY
- psql
- real API connect
- live AIWorkerOS call
- DB migration

## 完了条件

- csv local wiring JS がある
- new one-script bundle がある
- index.html がnew bundle 1本読み
- accepted UI文言が維持される
- company / department / organization / ledger wiring marker が維持される
- csv action wiring marker がある
- ApiRepository は disabled のまま
- 検証PASS
