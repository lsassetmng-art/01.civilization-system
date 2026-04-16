# ============================================================
# ANDROID CLASS INVENTORY REVIEW CHECKLIST
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines review checklist for Android class inventory design.

check_items:
- every major screen has a primary screen class
- every major screen has a primary ViewModel
- repository implementations are named consistently
- entity / dao / repository layers are separated
- gateways isolate remote concerns
- common UI components are not overloaded with business rules
- Pro classes remain clearly identifiable
