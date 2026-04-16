# ============================================================
# MBO FRONTEND DETAILED TASK SHEETS
# ============================================================

status: canonical
application: Mbo
layer: development
owner: Boss
prepared_by: Zero

purpose:
Provides detailed frontend task sheets
for the first implementation slice.

# ============================================================
# TASK SHEET 01
# OBJECTIVE LIST SCREEN
# ============================================================

task_id: FE-001
target_screen: objective_list
purpose:
- display visible objectives and open detail/create paths

main_work:
- build filter bar
- build paged result list
- connect GET /api/mbo/objectives
- handle loading/empty/error states
- add create button
- add row tap to detail

done_when:
- list loads and filters
- empty state is visible
- detail navigation works

# ============================================================
# TASK SHEET 02
# OBJECTIVE CREATE/EDIT SCREEN
# ============================================================

task_id: FE-002
target_screen: objective_create_edit
purpose:
- create draft and edit unlocked objective

main_work:
- build form fields from fixed contract
- wire create API
- wire update API
- add activate action
- display validation errors per field
- visually separate create vs edit mode

done_when:
- create works
- update works
- activate works
- locked objective shows read-only mode

# ============================================================
# TASK SHEET 03
# OBJECTIVE DETAIL SCREEN
# ============================================================

task_id: FE-003
target_screen: objective_detail
purpose:
- central hub for first slice

main_work:
- connect GET objective detail
- show summary card
- show latest progress summary
- show action plan summary
- add navigation to action plan and progress sections
- show lock badge if finalized

done_when:
- detail renders current state correctly
- latest execution info is visible

# ============================================================
# TASK SHEET 04
# ACTION PLAN LIST/CREATE SCREEN
# ============================================================

task_id: FE-004
target_screen: action_plan_list_create
purpose:
- show and create action plan rows

main_work:
- connect list API
- build step list
- build create form
- connect create API
- handle duplicate step_no error
- block create UI when locked

done_when:
- rows list correctly
- create works
- locked state blocks create visibly

# ============================================================
# TASK SHEET 05
# PROGRESS UPDATE/HISTORY SCREEN
# ============================================================

task_id: FE-005
target_screen: progress_update_history
purpose:
- create progress and view history

main_work:
- connect progress log list API
- build history timeline
- build progress create form
- connect create API
- show progress_percent, comment, blocker, next action
- block create UI when locked

done_when:
- history loads newest-first
- create works
- locked state blocks create visibly

# ============================================================
# TASK SHEET 06
# DASHBOARD SUMMARY SHELL
# ============================================================

task_id: FE-006
target_screen: dashboard_summary_shell
purpose:
- render first summary layer for implementation start

main_work:
- connect dashboard API
- show summary cards
- show action-needed cards
- add drill-down navigation to list/detail areas
- distinguish alert-like vs summary widgets visually

done_when:
- dashboard cards render
- counts are understandable
- navigation entry points work

cross_screen_rules:
- multilingual resources mandatory
- responsive layout mandatory
- read-only vs editable distinction mandatory
- loading/empty/error states mandatory
- lock badge mandatory where applicable

