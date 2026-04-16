# ============================================================
# RESTART AND REVIEW READING ORDER HARDENING PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines hardened reading order for implementation restart and review.

restart_bundle_order:
1. 090490_SCREEN_RESPONSIBILITY_HARDENING_INTERFACE.md
2. 090500_MULTILINGUAL_MULTICURRENCY_DISPLAY_PRIORITY_INTERFACE.md
3. 120820_IMPLEMENTATION_BOUNDARY_HARDENING.md
4. 120830_ADAPTIVE_PRESENTATION_WITHOUT_FLOW_DIVERGENCE_IMPLEMENTATION.md
5. 130390_PHASE1_GENERATION_TARGET_FILE_LIST_PLAN.md
6. 130400_PHASE1_ACCEPTANCE_CRITERIA_PLAN.md
7. 130410_PHASE2_ENTRY_DECISION_PLAN.md
8. 130510_PHASE1_PHASE2_SCOPE_HARDENING_PLAN.md

review_focus:
- no screen role drift
- no repository / formatter / ViewModel drift
- no phone / tablet flow divergence
- no multilingual / multicurrency meaning collapse
