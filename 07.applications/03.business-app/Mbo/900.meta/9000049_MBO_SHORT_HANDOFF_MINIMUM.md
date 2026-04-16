# ============================================================
# MBO SHORT HANDOFF MINIMUM
# ============================================================

status: draft-handoff
application: Mbo
layer: meta
owner: Boss
prepared_by: Zero

minimum_handoff:
Mbo is already fixed.
Do not restart from concept design.

minimum_read_set:
- 00_MBO_INTEGRATED.md
- 1200023_MBO_SQL_FULL_INTEGRATED.sql
- 1200029_MBO_SQL_EXECUTABLE_QUICKCHECK.sql
- 1300010_MBO_BACKEND_WORK_INSTRUCTION.md
- 1300011_MBO_FRONTEND_WORK_INSTRUCTION.md
- 1300020_MBO_FIRST_SLICE_ACCEPTANCE_RUNBOOK.md

minimum_next_actions:
- apply DB
- run quick-check
- implement backend first slice
- implement frontend first slice
- run acceptance

never_reopen_without_issue_record:
- product positioning
- feature scope A/B
- final lock
- governed reopen
- ERP snapshot outbound rule
- common component separation

