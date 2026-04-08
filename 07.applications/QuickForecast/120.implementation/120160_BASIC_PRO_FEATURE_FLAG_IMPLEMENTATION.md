# ============================================================
# BASIC / PRO FEATURE FLAG IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines feature-flag implementation direction for Basic / Pro.

flag_groups:
- tier.basic
- tier.pro
- pro.erp_reference
- pro.share
- pro.approval
- pro.sync
- pro.handoff
- pro.history_extended

basic_enabled:
- forecast draft
- scenario handling
- action board
- proposal draft builder
- profit preview
- local save

basic_disabled:
- ERP reference
- governed sharing
- governed approval
- enterprise sync
- ERP handoff

implementation_rules:
- server/governed enforcement required for Pro-only functions
- UI-only hiding is insufficient
- disabled Pro features should remain explainable to the user
