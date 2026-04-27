# AICompanyManager Phase GG-GJ Backend API Readonly Candidate Roadmap

phase: Phase GG-GJ
status: backend-api-readonly-candidate-started
db_write: false
rls_apply: false
psql: false
real_api_connect: false
browser_fetch: false
live_aiworkeros_call: false
git_push: false

## 目的

Web API込みWeb完結方式を前提に、readonly API接続前の backend API 実装置き場と candidate を作成する。

## 今回まとめる範囲

Phase GG:
- Backend API implementation location canon

Phase GH:
- readonly bootstrap backend candidate

Phase GI:
- ApiRepository readonly wiring candidate

Phase GJ:
- LocalRepository fallback and no-connect gate

## 現在位置

完了済み:
- Web UI / LocalRepository
- DB/RLS apply
- DB/RLS postcheck
- ApiRepository candidate
- ModeResolver candidate
- Web complete with backend API canon

今回:
- backend API readonly candidate 作成
- ただし real API connect / browser fetch はまだ実行しない

## 実行しないこと

- DB WRITE
- RLS APPLY
- psql
- real API connect
- browser fetch
- live AIWorkerOS call
- git push
