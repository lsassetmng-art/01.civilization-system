# ============================================================
# NEXT PHASE ENTRY NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the correct entry point when implementation is resumed later.

restart_entry:
When implementation resumes later,
start from the design-closed meaning first,
not from ad-hoc source generation.

restart_order:
1. 000_QUICK_FORECAST_CURRENT_STATUS.md
2. 900950_FINAL_DESIGN_JUDGMENT_NOTE.md
3. 900970_CLOSE_RECOMMENDATION_NOTE.md
4. 900990_DESIGN_CLOSURE_DECLARATION.md
5. 130420_DEVELOPMENT_RESTART_ENTRY_PLAN.md
6. 130390_PHASE1_GENERATION_TARGET_FILE_LIST_PLAN.md
7. 130400_PHASE1_ACCEPTANCE_CRITERIA_PLAN.md

restart_rule:
Do not reopen product meaning casually.
Only implementation should restart,
unless an explicit reopen decision is made.

implementation_entry_scope:
- implementation preparation
- implementation execution
- test and validation planning
- additive clarifications only

reopen_required_scope:
- identity changes
- pricing changes
- ERP boundary changes
- multilingual meaning changes
- multicurrency meaning changes
- multi-device flow meaning changes
