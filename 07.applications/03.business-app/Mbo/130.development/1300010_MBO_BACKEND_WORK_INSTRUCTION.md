# ============================================================
# MBO BACKEND WORK INSTRUCTION
# ============================================================

status: canonical
application: Mbo
layer: development
owner: Boss
prepared_by: Zero

purpose:
Provides a direct backend work instruction
for implementation continuation.

work_target:
Implement the first backend slice first,
without reopening product design.

must_read_before_start:
- 00_MBO_INTEGRATED.md
- 1200007_MBO_API_EXACT_PAYLOAD.md
- 1200023_MBO_SQL_FULL_INTEGRATED.sql
- 1200029_MBO_SQL_EXECUTABLE_QUICKCHECK.sql
- 1300006_MBO_BACKEND_FIRST_SLICE_EXACT.md
- 1300008_MBO_BACKEND_TASK_ORDER_DETAILED.md

implementation_scope_now:
- GET /api/mbo/objectives
- GET /api/mbo/objectives/{objective_id}
- POST /api/mbo/objectives
- PUT /api/mbo/objectives/{objective_id}
- POST /api/mbo/objectives/{objective_id}/activate
- GET /api/mbo/objectives/{objective_id}/action-plans
- POST /api/mbo/objectives/{objective_id}/action-plans
- GET /api/mbo/objectives/{objective_id}/progress-logs
- POST /api/mbo/objectives/{objective_id}/progress-logs
- GET /api/mbo/kpi-dashboard

mandatory_rules:
- request validation required
- role checks required
- company scope checks required
- final lock checks required
- server-side state transition checks required
- response envelope must follow fixed design
- do not weaken governed lock behavior
- do not bypass ERP/governance assumptions in shared code

task_sequence:
1. connect API layer to DB read views
2. implement objective list
3. implement objective detail
4. implement create objective
5. implement update objective
6. implement activate objective
7. implement action plan list/create
8. implement progress log list/create
9. implement dashboard summary
10. run quick-check and slice verification

done_definition:
- each endpoint returns exact envelope
- unauthorized actor is rejected
- wrong company scope is rejected
- locked objective normal write path is rejected
- draft -> active transition works
- progress create works only on unlocked objective

out_of_scope_now:
- review flow
- evaluation confirm flow
- ERP send/resend execution
- reopen execution
- export/reminder jobs
