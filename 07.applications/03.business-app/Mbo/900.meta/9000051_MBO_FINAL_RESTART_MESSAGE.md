# ============================================================
# MBO FINAL RESTART MESSAGE
# ============================================================

status: draft-handoff
application: Mbo
layer: meta
owner: Boss
prepared_by: Zero

restart_message:
Mbo is already canonically fixed.
Resume from implementation-first work.

read_first:
- 000_MBO_INDEX.md
- 00_MBO_INTEGRATED.md
- 1200023_MBO_SQL_FULL_INTEGRATED.sql
- 1200029_MBO_SQL_EXECUTABLE_QUICKCHECK.sql
- 1300010_MBO_BACKEND_WORK_INSTRUCTION.md
- 1300011_MBO_FRONTEND_WORK_INSTRUCTION.md
- 1300020_MBO_FIRST_SLICE_ACCEPTANCE_RUNBOOK.md

start_order:
- apply integrated SQL
- apply sample test data
- run quick-check
- implement backend first slice
- implement frontend first slice
- run first-slice acceptance
- expand only after pass

do_not_reopen:
- product positioning
- A/B scope
- final lock semantics
- governed reopen semantics
- ERP snapshot outbound semantics
- common component separation

