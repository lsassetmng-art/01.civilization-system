# ============================================================
# PRO VIEWMODEL STATE EVENT EFFECT REVIEW CHECKLIST
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines review checklist for Pro and auxiliary ViewModel design.

check_items:
- forecast detail acts as a stable summary hub
- approval and handoff states are separated
- history filtering is explicit
- share target permission selection is explicit
- settings separates local preferences from Pro connection summary
- Pro-only ViewModels are safely gated
