# ============================================================
# IMPLEMENTATION START CHECKLIST
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Checklist before Android implementation starts.

checklist:
- canonical positioning is understood
- ERP coexistence is understood
- Basic / Pro boundary is understood
- local save and governed action separation is understood
- screen responsibility realignment is understood
- ViewModel / reducer / repository refresh is understood
- phase 1 scope is frozen
- phase 2 and later are deferred consciously
- implementation starts from local-first core only

blockers:
- starting from Pro-heavy workflow
- starting from notification / handoff first
- starting from recommendation-heavy features
- skipping canonical reading order
