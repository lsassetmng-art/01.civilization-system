# AICompanyManager Phase DE-DH Workflow Final Local Verify Roadmap

phase: Phase DE-DH
status: workflow-final-local-verify-started
db_apply: false
rls_apply: false
real_api_connect: false
live_aiworkeros_call: false

## 目的

workflow start を local stub として接続し、LocalRepository wiring 全体を push前に確認できる状態にする。

## 今回まとめる範囲

Phase DE:
- workflow start local stub wiring

Phase DF:
- full local wiring regression

Phase DG:
- accepted UI final local wiring verify

Phase DH:
- push前チェック準備

## 維持する wiring

- company wiring
- department wiring
- organization wiring
- ledger wiring
- csv wiring
- review wiring

## 今回接続するもの

- start-workflow
- start-ai-workflow
- run-workflow

## 実行しないこと

- DB WRITE
- RLS APPLY
- psql
- real API connect
- live AIWorkerOS call
- DB migration
- RLS migration

## 完了条件

- workflow local stub wiring JS がある
- new one-script bundle がある
- index.html がnew bundle 1本読み
- accepted UI文言が維持される
- all local wiring markers が維持される
- workflow local stub marker がある
- ApiRepository は disabled のまま
- live AIWorkerOS call marker が false
- 検証PASS
