# AICompanyManager Phase FY-GB Web API Architecture Repair Roadmap

phase: Phase FY-GB repair
status: web-api-architecture-repair-started
db_write: false
rls_apply: false
psql: false
real_api_connect: false
browser_fetch: false
live_aiworkeros_call: false
git_push: false

## 目的

Phase FY-GB の recommended backend api 検証FAILを修正する。

## 原因

設計本文の推奨表記と、検証grepの固定文字列が一致していなかった。

## 修正方針

- 8410_WEB_COMPLETE_WITH_BACKEND_API_CANON.md に明示行を追記
- 検証側を表記ゆれ許容に修正
- DB/API接続は行わない

## 実行しないこと

- DB WRITE
- RLS APPLY
- psql
- real API connect
- browser fetch
- live AIWorkerOS call
- git push
