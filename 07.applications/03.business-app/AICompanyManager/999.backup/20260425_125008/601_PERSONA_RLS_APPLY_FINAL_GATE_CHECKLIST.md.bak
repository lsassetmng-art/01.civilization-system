# ============================================================
# AICompanyManager Persona RLS Apply Final Gate Checklist
# ============================================================

app_name: AICompanyManager
display_name: AI企業運営アプリ
phase: Phase G-Gate
status: persona-rls-final-gate-checklist-created
db_reviewer: 佐藤（DB担当）
db_target: PERSONA_DATABASE_URL

## 1. Apply Gate

RLS apply requires all PASS.

| gate | required | current |
|---|---:|---|
| Boss explicit RLS OK / GO | yes | BLOCKED |
| 佐藤（DB担当）RLS review OK | yes | pending |
| PERSONA_DATABASE_URL available | yes | not checked in design phase |
| Method A psql block prepared | yes | prepared |
| RLS SQL candidate prepared | yes | prepared |
| access control matrix prepared | yes | prepared |
| audit append-only policy designed | yes | prepared |
| RLS verification SQL prepared | yes | prepared |
| no blind destructive policy replacement | yes | required |

## 2. Current Decision

RLS APPLY: NOT EXECUTED

## 3. Why Blocked

The latest user instruction was "次".
That means proceed to next design step, but it is not explicit RLS apply approval.

## 4. Exact Apply Command Policy

When approved, use only:

psql "$PERSONA_DATABASE_URL" <<'SQL'
...
SQL

## 5. Forbidden Without Separate Explicit Approval

- drop table
- truncate
- delete data
- destructive alter
- blind drop policy
- blind replace policy
- disabling RLS after enabling
- granting broad public access
