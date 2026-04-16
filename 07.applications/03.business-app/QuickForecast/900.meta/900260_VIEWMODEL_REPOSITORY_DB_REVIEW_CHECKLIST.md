# ============================================================
# VIEWMODEL REPOSITORY DB REVIEW CHECKLIST
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines review checklist for Android state/repository/db design.

check_items:
- ViewModels align to major screens
- repositories isolate UI from storage and integration
- local entity set covers Forecast -> Action -> Proposal -> Profit chain
- local save and Pro authority states are separated
- ERP reference values are not confused with edited draft values
- cache entities are clearly cache/support state
