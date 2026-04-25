# ============================================================
# AICompanyManager DB Apply Prechecklist
# ============================================================

app_name: AICompanyManager
display_name: AI企業運営アプリ
phase: Phase C
status: prechecklist-created
db_reviewer: 佐藤（DB担当）

## 1. Apply Gate

DB apply is not allowed until all items are PASS.

| check | required |
|---|---:|
| Boss explicit GO | yes |
| 佐藤（DB担当）レビューOK | yes |
| DATABASE_URL target confirmed | yes |
| business schema target confirmed | yes |
| additive-only confirmed | yes |
| no destructive SQL confirmed | yes |
| no drop table confirmed | yes |
| no truncate confirmed | yes |
| no delete confirmed | yes |
| no update existing data confirmed | yes |
| RLS policy convention confirmed | yes |
| rollback / backup evidence plan confirmed | yes |

## 2. Required Environment

- DATABASE_URL must be set
- Use Transaction Pooler canonical DATABASE_URL
- Do not unset DATABASE_URL
- Use method A only

Method A:
psql "$DATABASE_URL" <<'SQL'
...
SQL

## 3. SQL Safety Rules

Allowed in initial apply:
- create schema if not exists
- create table if not exists
- create index if not exists
- comment on table
- alter table enable row level security only after RLS review

Not allowed without separate approval:
- drop
- truncate
- delete
- destructive alter
- table rename
- column rename
- data migration update
- replacing existing policies blindly

## 4. Review Questions for Sato

- Should external FK be added now or deferred?
- Should enum be CHECK constraints now or app-side enum only?
- Should updated_at trigger be common function or app-level update?
- Should content_text be allowed or content_ref only?
- Should audit_log be append-only with no update policy?
- Should queue_item be persisted in DB or partially local-only?
- Should RLS be owner_user_id direct or project ownership derived?
- Should aiworker_run_ref be unique or non-unique?
- Should current_pipeline_run_id on project be FK or plain uuid?

## 5. Apply Decision

Current decision:
- Phase C: review package only
- Phase D: apply one-block can be prepared
- DB apply: only after Boss says DB OK / GO
