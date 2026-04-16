# ============================================================
# MBO BACKEND DETAILED TASK SHEETS
# ============================================================

status: canonical
application: Mbo
layer: development
owner: Boss
prepared_by: Zero

purpose:
Provides detailed backend task sheets
for the first implementation slice.

# ============================================================
# TASK SHEET 01
# OBJECTIVE LIST API
# ============================================================

task_id: BE-001
target_endpoint: GET /api/mbo/objectives
purpose:
- return visible objective list by scope

required_inputs:
- period_id
- owner_user_id
- manager_user_id
- status
- objective_category
- keyword
- page
- page_size

main_work:
- bind query parameters
- validate page and page_size
- apply company scope
- apply role scope
- read from list view or equivalent query
- wrap in exact response envelope

done_when:
- paged list returns correctly
- unauthorized scope is excluded
- empty list returns correctly

# ============================================================
# TASK SHEET 02
# OBJECTIVE DETAIL API
# ============================================================

task_id: BE-002
target_endpoint: GET /api/mbo/objectives/{objective_id}
purpose:
- return one objective detail record

main_work:
- validate objective_id
- apply company scope and role scope
- read from detail view
- return 404 when not visible or not found
- wrap in exact response envelope

done_when:
- detail fields match fixed contract
- hidden records are not exposed

# ============================================================
# TASK SHEET 03
# CREATE OBJECTIVE API
# ============================================================

task_id: BE-003
target_endpoint: POST /api/mbo/objectives
purpose:
- create draft objective

main_work:
- validate request body
- validate required fields
- validate period existence and open status
- validate owner is current actor for first slice
- insert mbo_objective in draft state
- return created identity and timestamps

done_when:
- valid request creates draft
- invalid period or missing required field is rejected

# ============================================================
# TASK SHEET 04
# UPDATE OBJECTIVE API
# ============================================================

task_id: BE-004
target_endpoint: PUT /api/mbo/objectives/{objective_id}
purpose:
- update non-finalized objective

main_work:
- validate objective_id and request body
- confirm actor can update target objective
- confirm final_lock_flag = false
- update mutable fields only
- preserve server-side updated_at behavior

done_when:
- unlocked objective updates succeed
- locked objective updates fail

# ============================================================
# TASK SHEET 05
# ACTIVATE OBJECTIVE API
# ============================================================

task_id: BE-005
target_endpoint: POST /api/mbo/objectives/{objective_id}/activate
purpose:
- move objective from draft to active

main_work:
- validate objective existence
- confirm actor permission
- validate activation-required fields
- validate period is open
- update status to active
- preserve transition audit logging pattern if available

done_when:
- draft -> active works
- invalid transition is rejected

# ============================================================
# TASK SHEET 06
# ACTION PLAN LIST API
# ============================================================

task_id: BE-006
target_endpoint: GET /api/mbo/objectives/{objective_id}/action-plans
purpose:
- return action plan rows for one objective

main_work:
- validate objective visibility
- query by objective_id
- sort by step_no
- return exact envelope

done_when:
- rows return in stable order
- empty result is handled correctly

# ============================================================
# TASK SHEET 07
# ACTION PLAN CREATE API
# ============================================================

task_id: BE-007
target_endpoint: POST /api/mbo/objectives/{objective_id}/action-plans
purpose:
- create action plan row

main_work:
- validate request body
- confirm objective visibility and ownership
- confirm objective is not locked
- validate step_no uniqueness within objective
- insert row
- return created identity

done_when:
- valid row creates successfully
- duplicate step_no fails correctly
- locked objective rejects create

# ============================================================
# TASK SHEET 08
# PROGRESS LOG LIST API
# ============================================================

task_id: BE-008
target_endpoint: GET /api/mbo/objectives/{objective_id}/progress-logs
purpose:
- return progress history

main_work:
- validate objective visibility
- query logs ordered by logged_at desc
- apply page/page_size if used
- return exact envelope

done_when:
- newest logs appear first
- empty result is handled correctly

# ============================================================
# TASK SHEET 09
# PROGRESS LOG CREATE API
# ============================================================

task_id: BE-009
target_endpoint: POST /api/mbo/objectives/{objective_id}/progress-logs
purpose:
- create new progress history row

main_work:
- validate request body
- validate progress range
- confirm actor ownership
- confirm objective is not locked
- insert append-only log row
- optionally update objective.progress_percent consistently if backend design chooses

done_when:
- unlocked active objective accepts progress
- locked objective rejects progress
- invalid range rejects request

# ============================================================
# TASK SHEET 10
# DASHBOARD SUMMARY API
# ============================================================

task_id: BE-010
target_endpoint: GET /api/mbo/kpi-dashboard
purpose:
- return first dashboard summary data

main_work:
- apply role/company/period scope
- read from dashboard helper view(s)
- map to exact dashboard response shape
- return summary cards and minimal chart payload

done_when:
- dashboard returns scoped counts
- ERP failure count and stale progress count are correct

