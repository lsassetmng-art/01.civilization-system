# ============================================================
# STREAM STUDIO PHASE 1 PSQL APPLY PREFLIGHT MEMO
# ============================================================

status: sql-preflight
layer: implementation-db-preflight
system: applications
application: StreamStudio
owner: Boss
prepared_by: Zero

purpose:
Defines the preflight discipline before real SQL writing and psql apply.

db_environment_rule:
- Persona-side DB work uses PERSONA_DATABASE_URL
- ERP-side DB work uses DATABASE_URL
- StreamStudio Phase 1 DB work should follow Persona-side rule unless explicitly redirected

psql_execution_rule:
- use Method A only
- psql "$PERSONA_DATABASE_URL" <<'SQL'
- ...
- SQL

termux_rule:
- use one-block execution style
- avoid cd-dependent relative assumptions
- create needed temp files under $HOME/.tmp if required

preflight_checklist:
- PERSONA_DATABASE_URL is exported
- target environment is confirmed as non-ERP for StreamStudio phase 1
- migration unit order is fixed
- table list is fixed
- FK direction is fixed
- audit and runtime tables are included
- destructive rollback is not assumed
- review by 佐藤（DB担当） is included per project rule

sql_writing_non_goals:
- no marketplace / membership / split tables in phase 1 sql batch
- no connector execution tables beyond phase 1 runtime minimum
- no physical precision drift from money policy when later phases add money tables

ready_condition:
Phase 1 real SQL may be written once this preflight memo,
the DDL exact docs, and migration split plan are all accepted.

fixed_statement:
This memo freezes the operational discipline for real Phase 1 SQL writing in Termux.
