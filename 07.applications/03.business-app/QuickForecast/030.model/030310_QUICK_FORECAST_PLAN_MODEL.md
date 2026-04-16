# ============================================================
# QUICK FORECAST PLAN MODEL
# ============================================================

status: canonical
layer: model
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines pricing plan model for QuickForecast.

plans:
- BASIC
- PRO_PERSONAL
- PRO_TEAM

plan_meanings:

BASIC:
- free
- local-first
- single-user
- no governed team workflow

PRO_PERSONAL:
- paid
- individual productivity tier
- stronger continuity and storage
- sync-capable personal usage

PRO_TEAM:
- paid
- collaborative team tier
- governed workflow
- ERP-connected enterprise usage boundary

model_rule:
Plan model must remain independent
from business document state model.
