# ============================================================
# MBO FRONTEND WORK INSTRUCTION
# ============================================================

status: canonical
application: Mbo
layer: development
owner: Boss
prepared_by: Zero

purpose:
Provides a direct frontend work instruction
for implementation continuation.

work_target:
Implement the first frontend slice first,
without reopening screen scope.

must_read_before_start:
- 00_MBO_INTEGRATED.md
- 0200009_MBO_SCREEN_DETAIL_ARCHITECTURE.md
- 1200006_MBO_SCREEN_IMPLEMENTATION_DETAIL.md
- 1300007_MBO_FRONTEND_FIRST_SLICE_EXACT.md
- 1300009_MBO_FRONTEND_TASK_ORDER_DETAILED.md

implementation_scope_now:
- dashboard summary shell
- objective list
- objective create/edit
- objective detail
- action plan list/create
- progress update/history

mandatory_rules:
- multilingual resource structure required
- iphone/android/pc/tablet responsive handling required
- loading/empty/error states required
- lock badge and read-only expression required
- editable vs read-only mode separation required
- do not mix reopen flow into normal edit flow
- do not hide lock rejection reasons

task_sequence:
1. establish shell and route skeleton
2. implement objective list
3. implement objective create/edit
4. implement objective detail
5. implement action plan list/create
6. implement progress update/history
7. implement dashboard summary shell
8. verify multi-device layouts
9. verify locked/editable visual states

done_definition:
- user can reach each first-slice screen
- create/edit/detail flow works
- action plan add flow works
- progress add/history flow works
- dashboard shell shows live summary data
- locked records display as locked
- read-only and editable states are obvious

out_of_scope_now:
- review screens
- evaluation screens
- KPI full charts
- ERP screens
- reopen governance screens
- admin template screens
