# AICompanyManager Phase EO-ER DB/RLS Apply Roadmap

phase: Phase EO-ER
status: db-rls-apply-started
sato_review: GO
boss_db_ok: GO
db_apply: true
rls_apply: true
psql: true
real_api_connect: false
live_aiworkeros_call: false
git_push: false

## 目的

Boss DB OK を受け、佐藤レビューGO済みの refined SQL v2 を Persona側DBへ適用する。

## 実行範囲

- pgcrypto extension precheck/apply
- base tables apply
- RLS helper functions apply
- bootstrap/review/workflow RPC candidate apply
- RLS policies apply
- verification SQL execute

## 実行しないこと

- real API connect
- live AIWorkerOS call
- git push
- rollback execution

## 使用環境変数

Use:
- PERSONA_DATABASE_URL

Do not use:
- DATABASE_URL
