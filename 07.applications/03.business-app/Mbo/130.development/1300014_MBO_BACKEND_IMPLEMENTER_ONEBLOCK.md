# ============================================================
# MBO BACKEND IMPLEMENTER ONEBLOCK
# ============================================================

status: canonical
application: Mbo
layer: development
owner: Boss
prepared_by: Zero

purpose:
Single-entry instruction block for backend implementer.

start_here:
- 00_MBO_INTEGRATED.md
- 1200007_MBO_API_EXACT_PAYLOAD.md
- 1200023_MBO_SQL_FULL_INTEGRATED.sql
- 1200029_MBO_SQL_EXECUTABLE_QUICKCHECK.sql
- 1300006_MBO_BACKEND_FIRST_SLICE_EXACT.md
- 1300010_MBO_BACKEND_WORK_INSTRUCTION.md
- 1300012_MBO_BACKEND_DETAILED_TASK_SHEETS.md

implement_now:
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

rules:
- exact response envelope required
- role guard required
- company scope required
- lock check required
- state transition check required
- no design reopening
- no weakening of final lock semantics

minimum_backend_delivery:
- objective list/detail/create/update/activate work
- action plan list/create work
- progress log list/create work
- dashboard summary works
- first-slice acceptance checklist can pass backend side

record_progress_with:
- 9000034_MBO_IMPLEMENTATION_PROGRESS_RECORD_TEMPLATE.md
