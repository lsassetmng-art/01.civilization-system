# ============================================================
# MBO ALERT REMINDER SUMMARY
# ============================================================

status: canonical
application: Mbo
layer: meta
owner: Boss
prepared_by: Zero

summary:
Formal alert and reminder rules are fixed for Mbo.

fixed_alerts:
- stale progress alert
- overdue review alert
- pending evaluation alert
- ERP send failure alert
- lock state attention alert

fixed_reminders:
- progress update reminder
- scheduled review reminder
- evaluation confirmation reminder
- batch review reminder
- batch progress reminder

fixed_defaults:
- stale progress threshold: 7 days
- review upcoming reminder: 3 days before
- evaluation confirmation reminder: 3 days after draft
- ERP failure attention: immediate

next_recommended_design_step:
- reopen governance exact design
- exception operation design
- dashboard aggregate rule fixation
