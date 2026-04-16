# ============================================================
# MBO ONEPAGE NEXT CHAT START
# ============================================================

status: draft-handoff
application: Mbo
layer: meta
owner: Boss
prepared_by: Zero

onepage_start:
Mbo is already fixed.
Continue from implementation-first work.

read_first:
- 000_MBO_INDEX.md
- 00_MBO_INTEGRATED.md
- 1200023_MBO_SQL_FULL_INTEGRATED.sql
- 1200029_MBO_SQL_EXECUTABLE_QUICKCHECK.sql
- 1300010_MBO_BACKEND_WORK_INSTRUCTION.md
- 1300011_MBO_FRONTEND_WORK_INSTRUCTION.md
- 1300020_MBO_FIRST_SLICE_ACCEPTANCE_RUNBOOK.md

start_order:
- apply DB
- run quick-check
- implement backend first slice
- implement frontend first slice
- run acceptance
- expand only after pass

do_not_reopen:
- product positioning
- A/B scope
- final lock semantics
- governed reopen semantics
- ERP snapshot semantics
- common component separation

