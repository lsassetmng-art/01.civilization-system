# AICompanyManager PERSONA_DATABASE_URL Pre-Apply Gate

phase: Phase EA
status: persona-database-url-preapply-gate
db_apply: false
psql: false

## 1. 使用環境変数

AICompanyManager の DB作業は Persona側DBで行う。

Use:
- PERSONA_DATABASE_URL

Do not use:
- DATABASE_URL

## 2. 理由

AICompanyManager は BusinessOS配下アプリだが、今回のDB作業文脈では Persona側DB 上の business schema / aiworker schema を扱う。

## 3. 実行形式

DB apply時の唯一の形式:

psql "$PERSONA_DATABASE_URL" <<'SQL'
-- SQL here
SQL

## 4. このPhaseでの扱い

このPhaseでは psql を実行しない。

確認のみ:
- PERSONA_DATABASE_URL の使用方針
- DATABASE_URL 不使用方針
- 佐藤レビュー必須
- Boss DB OK 必須

## 5. STOP条件

以下の場合は DB apply 禁止。

- PERSONA_DATABASE_URL が未確認
- DATABASE_URL を使おうとしている
- 佐藤レビュー未完了
- Boss DB OK がない
- RLS plan が未確認
- rollback plan がない
