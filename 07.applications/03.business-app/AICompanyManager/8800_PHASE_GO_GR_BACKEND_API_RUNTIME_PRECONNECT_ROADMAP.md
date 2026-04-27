# AICompanyManager Phase GO-GR Backend API Runtime Preconnect Roadmap

phase: Phase GO-GR
status: backend-api-runtime-preconnect-started
db_write: false
rls_apply: false
psql: false
real_api_connect: false
browser_fetch: false
backend_db_connect: false
live_aiworkeros_call: false
git_push: false

## 目的

backend API readonly candidate 作成後、実接続前に runtime contract / readonly adapter / SQL mapping を候補として固定する。

## 今回まとめる範囲

Phase GO:
- Backend API runtime contract candidate

Phase GP:
- Supabase readonly adapter candidate

Phase GQ:
- bootstrap readonly SQL mapping candidate

Phase GR:
- API readonly connect execution gate

## 現在位置

完了済み:
- Web UI / LocalRepository
- DB/RLS apply
- DB/RLS postcheck
- ApiRepository candidate
- ModeResolver candidate
- Web complete with backend API canon
- backend API readonly candidate

今回:
- backend runtime preconnect candidate

## 実行しないこと

- DB WRITE
- RLS APPLY
- psql
- real API connect
- browser fetch
- backend DB connect
- live AIWorkerOS call
- git push
