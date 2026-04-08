# ============================================================
# PRO REDUCER AND REPOSITORY RESPONSIBILITY REVIEW CHECKLIST
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines review checklist for Pro reducer transitions and repository responsibility.

check_items:
- forecast detail remains a summary hub, not a truth owner
- approval and handoff transitions are clearly separated
- acceptance / rejection / failure remain distinct states
- history remains read-centric
- share creation and revoke each have clear repository owners
- settings save and Pro connection refresh are separated
- Pro gate checks occur before governed effects
