# AICompanyManager Phase HA-HD-PREP Readonly API Connect Package Roadmap

phase: Phase HA-HD-PREP
status: readonly-api-connect-package-prepared
db_write: false
rls_apply: false
psql: false
real_api_connect: false
browser_fetch: false
backend_db_connect: false
live_aiworkeros_call: false
git_push: false

## 目的

Phase HA-HD Readonly API Connect 実行前に、実接続用の候補ファイルと開始条件を固定する。

## 注意

このPhaseでは実接続しない。

実接続には Boss の以下いずれかの明示が必要。

- implementation OK
- API接続 OK
- readonly API OK

## 今回まとめる範囲

Phase HA:
- Boss OK required gate

Phase HB:
- backend readonly real adapter disabled candidate

Phase HC:
- browser readonly fetch disabled candidate

Phase HD:
- rollback / fallback / next command start conditions

## 実行しないこと

- DB WRITE
- RLS APPLY
- psql
- real API connect
- browser fetch
- backend DB connect
- live AIWorkerOS call
- git push
