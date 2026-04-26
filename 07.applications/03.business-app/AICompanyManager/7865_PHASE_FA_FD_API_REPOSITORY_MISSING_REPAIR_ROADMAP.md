# AICompanyManager Phase FA-FD API Repository Missing Repair Roadmap

phase: Phase FA-FD repair2
status: api-repository-missing-repair-started
db_write: false
rls_apply: false
psql: false
real_api_connect: false
fetch: false
live_aiworkeros_call: false
git_push: false

## 目的

FA-FD repaired check で不足していた ApiRepository candidate JS を復元する。

## 原因

不足ファイル:
- assets/js/aicm-api-repository-candidate.js

## 修正方針

- candidate JS を disabled / no network で復元する
- index.html には読み込ませない
- LocalRepository active のまま維持する
- FA-FD repaired check を再実行する

## 実行しないこと

- DB WRITE
- RLS APPLY
- psql
- real API connect
- fetch
- live AIWorkerOS call
- git push
