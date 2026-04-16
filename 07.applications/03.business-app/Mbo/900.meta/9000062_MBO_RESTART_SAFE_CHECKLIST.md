# ============================================================
# MBO RESTART SAFE CHECKLIST
# ============================================================

status: canonical
application: Mbo
layer: meta
owner: Boss
prepared_by: Zero

purpose:
Defines the minimum checklist
for safely restarting Mbo in another chat.

restart_safe_checklist:
- current wave is recorded
- current task state is recorded
- backend ledger is updated
- frontend ledger is updated
- blocker/deviation records are updated
- pass status board is updated
- restart file set is identified
- next action is explicit
- do_not_reopen items remain explicit

minimum_restart_file_set:
- 00_MBO_INTEGRATED.md
- 1200023_MBO_SQL_FULL_INTEGRATED.sql
- 1200029_MBO_SQL_EXECUTABLE_QUICKCHECK.sql
- 1300010_MBO_BACKEND_WORK_INSTRUCTION.md
- 1300011_MBO_FRONTEND_WORK_INSTRUCTION.md
- 1300020_MBO_FIRST_SLICE_ACCEPTANCE_RUNBOOK.md
- 1300024_MBO_IMPLEMENTATION_WAVE_CONTROL.md

