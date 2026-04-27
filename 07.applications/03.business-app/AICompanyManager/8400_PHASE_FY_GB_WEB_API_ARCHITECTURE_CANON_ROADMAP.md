# AICompanyManager Phase FY-GB Web API Architecture Canon Roadmap

phase: Phase FY-GB
status: web-api-architecture-canon-started
db_write: false
rls_apply: false
psql: false
real_api_connect: false
browser_fetch: false
live_aiworkeros_call: false
git_push: false

## 目的

AICompanyManager の実装方式を、Web API込みWeb完結方式として正本化する。

## 推奨方式

Recommended:
- HTML UI + backend API

Not recommended as main:
- browser-only direct DB operation

## 今回まとめる範囲

Phase FY:
- Web完結方式の定義

Phase FZ:
- Browser security boundary

Phase GA:
- Backend API recommended structure

Phase GB:
- readonly API connect next gate update

## 実行しないこと

- DB WRITE
- RLS APPLY
- psql
- real API connect
- browser fetch
- live AIWorkerOS call
- git push
