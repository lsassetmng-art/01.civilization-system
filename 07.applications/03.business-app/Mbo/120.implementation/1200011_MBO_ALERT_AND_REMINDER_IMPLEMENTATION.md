# ============================================================
# MBO ALERT AND REMINDER IMPLEMENTATION
# ============================================================

status: canonical
application: Mbo
layer: implementation
owner: Boss
prepared_by: Zero

purpose:
Implementation-facing rules for alerts and reminders.

server_side_rules:
- alert conditions must be computed server-side
- reminder eligibility must be computed server-side
- dashboard counts must be based on persisted records
- ERP failure alerts must be created from transmission result states
- stale progress thresholds must not rely on client time alone

UI_rules:
- alerts and reminders must be visually distinct
- critical alerts must be more prominent than reminders
- resolved alerts must disappear from active alert lists
- dashboard widgets must show counts and direct navigation paths
- disabled actions must not be presented as unresolved reminders

job_rules:
- reminder batch jobs must be queued and history-tracked
- export or resend failures must not be mislabeled as reminders
- duplicate active alerts for the same root condition should be avoided where possible

audit_rules:
- reminder batch sends must be historically traceable
- ERP failure alert visibility must be auditable
- alert resolution by record change must remain inferable from history

