# ============================================================
# MBO FRONTEND IMPLEMENTER ONEBLOCK
# ============================================================

status: canonical
application: Mbo
layer: development
owner: Boss
prepared_by: Zero

purpose:
Single-entry instruction block for frontend implementer.

start_here:
- 00_MBO_INTEGRATED.md
- 0200009_MBO_SCREEN_DETAIL_ARCHITECTURE.md
- 1200006_MBO_SCREEN_IMPLEMENTATION_DETAIL.md
- 1300007_MBO_FRONTEND_FIRST_SLICE_EXACT.md
- 1300011_MBO_FRONTEND_WORK_INSTRUCTION.md
- 1300013_MBO_FRONTEND_DETAILED_TASK_SHEETS.md

implement_now:
- dashboard summary shell
- objective list
- objective create/edit
- objective detail
- action plan list/create
- progress update/history

rules:
- multilingual baseline required
- iphone/android/pc/tablet layouts required
- loading/empty/error states required
- lock badge required
- read-only vs editable distinction required
- no reopen flow mixed into normal edit flow
- no design reopening

minimum_frontend_delivery:
- first-slice screens open and connect to APIs
- create/edit/detail continuity works
- action plan create works
- progress create/history works
- dashboard shell works
- lock states are visible
- first-slice acceptance checklist can pass frontend side

record_progress_with:
- 9000034_MBO_IMPLEMENTATION_PROGRESS_RECORD_TEMPLATE.md
