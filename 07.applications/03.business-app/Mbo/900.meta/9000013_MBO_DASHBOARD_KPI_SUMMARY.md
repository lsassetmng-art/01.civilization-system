# ============================================================
# MBO DASHBOARD KPI SUMMARY
# ============================================================

status: canonical
application: Mbo
layer: meta
owner: Boss
prepared_by: Zero

summary:
Dashboard aggregate rules and KPI calculation standards are fixed.

fixed_decisions:
- counts are role-scoped and period-scoped
- action-needed widgets are separated from historical summaries
- overdue reviews exclude cancelled schedules
- ERP success rate includes resend attempts
- average progress excludes draft objectives by default

next_recommended_design_step:
- root navigation reinforcement
- integrated overview refresh
- closure candidate summary creation
