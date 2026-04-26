# AICompanyManager Phase FA-FD API Readonly Prep Repair Roadmap

phase: Phase FA-FD repair
status: api-readonly-prep-repair-started
db_write: false
rls_apply: false
psql: false
real_api_connect: false
live_aiworkeros_call: false
git_push: false

## 目的

Phase FA-FD API readonly prep check の2件FAILを修正する。

## 修正方針

- brittle grep を廃止
- mode resolver の意味確認に変更
- previous report は存在する場合に確認、存在しない場合は警告扱いにする
- 失敗時は FAILED_LINES を出す
- index.html は変更しない
- real API connect はしない

## 実行しないこと

- DB WRITE
- RLS APPLY
- psql
- fetch
- real API connect
- live AIWorkerOS call
- git push
