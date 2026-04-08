# ============================================================
# VIEWMODEL STATE EVENT EFFECT REVIEW CHECKLIST
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines review checklist for ViewModel state/event/effect design.

check_items:
- each core screen has explicit state segments
- navigation is modeled as effect
- validation is explicit in state/effect handling
- save and governed Pro actions are separated
- state survives common editing flow
- Forecast -> Action -> Proposal -> Profit chain is preserved in ViewModels
