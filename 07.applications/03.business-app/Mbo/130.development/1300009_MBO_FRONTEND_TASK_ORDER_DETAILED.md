# ============================================================
# MBO FRONTEND TASK ORDER DETAILED
# ============================================================

status: canonical
application: Mbo
layer: development
owner: Boss
prepared_by: Zero

purpose:
Breaks frontend work into concrete ordered tasks.

ordered_tasks:
- establish app shell
- establish route/navigation skeleton
- establish multilingual resource baseline
- establish responsive layout baseline
- implement objective list screen
- implement objective create/edit screen
- implement objective detail screen
- implement action plan list/edit screen
- implement progress update/history screen
- implement dashboard summary shell
- add loading/empty/error states
- add lock badge and disabled-state explanation
- add filter/search baseline
- validate first slice multi-device layouts
- expand to review screens
- expand to evaluation screens
- expand to KPI/export/reminder screens
- expand to ERP/reopen screens

done_definition_for_ordered_tasks:
- screen opens
- required API call succeeds
- state handling is correct
- layout works across required device classes
- locked/editable modes are visually distinct
