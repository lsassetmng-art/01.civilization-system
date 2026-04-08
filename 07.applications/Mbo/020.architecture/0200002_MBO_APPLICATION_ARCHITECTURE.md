# ============================================================
# MBO APPLICATION ARCHITECTURE
# ============================================================

status: canonical
application: Mbo
layer: architecture
owner: Boss
prepared_by: Zero

components:
- dashboard module
- objective module
- action plan module
- progress module
- review module
- evaluation module
- sharing module
- ERP sync module

rules:
- objectives are primary records
- action plans belong to objectives
- reviews belong to objectives and periods
- final evaluation locks mutable fields
