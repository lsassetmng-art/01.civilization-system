# ============================================================
# ANDROID GENERATION TARGET FREEZE REVIEW CHECKLIST
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines review checklist for generation target freeze.

check_items:
- frozen target list is complete enough for phase 1
- phase 1 target set is coherent by itself
- deferred targets do not block local-first chain
- generation order follows dependency direction
- done criteria are explicit
