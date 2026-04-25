# ============================================================
# AICompanyManager DB Apply Final Gate Checklist
# ============================================================

app_name: AICompanyManager
display_name: AI企業運営アプリ
phase: Phase E-Gate
status: final-gate-checklist-created
db_reviewer: 佐藤（DB担当）

## 1. Apply Gate

DB apply requires all PASS.

| gate | required | current |
|---|---:|---|
| Boss explicit DB OK / GO | yes | BLOCKED |
| Sato DB review OK | yes | pending |
| DATABASE_URL available | yes | not checked in design phase |
| Method A psql block prepared | yes | prepared |
| additive-only SQL confirmed | yes | prepared |
| destructive SQL absent | yes | prepared |
| post-apply verify SQL prepared | yes | prepared |
| rollback / recovery memo prepared | yes | prepared |

## 2. Current Decision

DB APPLY: NOT EXECUTED

## 3. Why Blocked

The latest user instruction was "次".
That means proceed to next design step, but it is not explicit DB apply approval.

## 4. Exact Apply Command Policy

When approved, use only:

psql "$DATABASE_URL" <<'SQL'
...
SQL

## 5. Forbidden Without Separate Explicit Approval

- drop
- truncate
- delete
- destructive alter
- table rename
- column rename
- data update
- replacing RLS policies blindly
