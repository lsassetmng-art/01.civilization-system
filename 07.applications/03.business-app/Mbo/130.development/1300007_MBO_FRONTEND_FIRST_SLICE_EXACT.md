# ============================================================
# MBO FRONTEND FIRST SLICE EXACT
# ============================================================

status: canonical
application: Mbo
layer: development
owner: Boss
prepared_by: Zero

purpose:
Fixes the exact first frontend implementation slice.

first_slice_scope:
- dashboard summary shell
- objective list screen
- objective create/edit screen
- objective detail screen
- action plan list/create screen
- progress update/history screen

read_dependencies:
- 0200009_MBO_SCREEN_DETAIL_ARCHITECTURE.md
- 1200006_MBO_SCREEN_IMPLEMENTATION_DETAIL.md
- 1300004_MBO_FRONTEND_IMPLEMENTATION_TASK_BREAKDOWN.md

required_frontend_rules:
- multilingual resource structure required
- iphone/android/pc/tablet responsive layout required
- lock badge visible where applicable
- loading/empty/error states required
- filter/search baseline required on objective list
- create/edit and read-only modes must be visually distinct

frontend_acceptance:
- user can browse own visible objectives
- user can create draft objective
- user can edit non-finalized objective
- user can activate objective
- user can add action plans
- user can add progress logs
- detail screen reflects latest progress and current state

out_of_scope_for_first_slice:
- review screens
- evaluation screens
- ERP screens
- template admin
- KPI dashboard full charts
- reopen governance screens
