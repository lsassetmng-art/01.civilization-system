# ============================================================
# MBO MASTER RESTART NAVIGATION
# ============================================================

status: canonical
application: Mbo
layer: meta
owner: Boss
prepared_by: Zero

purpose:
Defines the shortest safe restart navigation
for a future chat.

restart_priority_order:
1:
  file: 000_MBO_INDEX.md
  reason:
    top-level map

2:
  file: 00_MBO_INTEGRATED.md
  reason:
    whole-system understanding

3:
  file: 1200023_MBO_SQL_FULL_INTEGRATED.sql
  reason:
    DB execution base

4:
  file: 1200029_MBO_SQL_EXECUTABLE_QUICKCHECK.sql
  reason:
    immediate DB verification

5:
  file: 1300010_MBO_BACKEND_WORK_INSTRUCTION.md
  reason:
    backend implementation start

6:
  file: 1300011_MBO_FRONTEND_WORK_INSTRUCTION.md
  reason:
    frontend implementation start

7:
  file: 1300020_MBO_FIRST_SLICE_ACCEPTANCE_RUNBOOK.md
  reason:
    first-slice verification path

restart_rule:
Do not restart from product-definition discussion.
Restart from implementation execution.

