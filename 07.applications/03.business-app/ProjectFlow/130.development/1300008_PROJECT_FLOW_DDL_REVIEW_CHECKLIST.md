# ============================================================
# PROJECT FLOW DDL REVIEW CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero
review_required:
- Sato(DB)

purpose:
Defines DDL review checklist before execution.

checklist:
- schema name confirmed
- table names confirmed
- PK and FK coverage confirmed
- index coverage confirmed
- check constraint coverage confirmed
- updated_at trigger policy confirmed
- enum/check implementation style confirmed
- company consistency strategy confirmed
- archive semantics confirmed
- RLS design reviewed separately
- migration split order confirmed

review_notes:
- additive only
- no destructive migration in initial pass
- review with DB owner before execution
