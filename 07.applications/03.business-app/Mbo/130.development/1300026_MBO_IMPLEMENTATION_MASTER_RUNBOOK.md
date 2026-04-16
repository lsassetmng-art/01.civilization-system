# ============================================================
# MBO IMPLEMENTATION MASTER RUNBOOK
# ============================================================

status: canonical
application: Mbo
layer: development
owner: Boss
prepared_by: Zero

purpose:
Provides the master implementation runbook
for operating Mbo from wave_01 through later waves.

master_flow:
- apply DB pack
- apply seed and sample data
- run quick-check
- execute wave_01
- run first-slice acceptance
- promote to wave_02 only after pass
- execute later waves in controlled order
- record all blockers and deviations
- restart future chats from implementation state, not design state

mandatory_operating_rules:
- do not reopen fixed product design without deviation record
- do not weaken final lock semantics
- do not weaken governed reopen semantics
- do not bypass ERP snapshot semantics
- do not mix common-component redesign into Mbo implementation chat
- do not promote wave when critical issues remain open

daily_operating_cycle:
1. choose current wave
2. choose active tasks inside wave
3. update progress ledgers
4. run verification for changed area
5. record issues or deviations
6. decide continue / block / review_ready
7. update wave progress template

minimum_read_set:
- 000_MBO_INDEX.md
- 00_MBO_INTEGRATED.md
- 1200023_MBO_SQL_FULL_INTEGRATED.sql
- 1200029_MBO_SQL_EXECUTABLE_QUICKCHECK.sql
- 1300024_MBO_IMPLEMENTATION_WAVE_CONTROL.md
- 1300010_MBO_BACKEND_WORK_INSTRUCTION.md
- 1300011_MBO_FRONTEND_WORK_INSTRUCTION.md
- 1300020_MBO_FIRST_SLICE_ACCEPTANCE_RUNBOOK.md

success_condition:
Implementation is being managed by
fixed scope, fixed governance, fixed wave order,
and recorded acceptance evidence.

