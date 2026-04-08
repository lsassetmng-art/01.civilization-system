# ============================================================
# ENTITY DAO REPOSITORY REVIEW CHECKLIST
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines review checklist for entity / DAO / repository design.

check_items:
- all core chain entities exist
- local identity and external identity are distinguishable
- DAO scope stays persistence-focused
- repositories expose domain-level methods
- screen to repository mapping is understandable
- Pro governed operations remain separate from local draft save
- delete behavior is explicit and limited
