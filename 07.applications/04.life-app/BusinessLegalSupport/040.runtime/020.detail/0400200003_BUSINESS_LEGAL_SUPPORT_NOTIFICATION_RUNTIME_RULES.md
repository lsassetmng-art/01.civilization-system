# ============================================================
# BUSINESS LEGAL SUPPORT NOTIFICATION RUNTIME RULES
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 040.runtime
subfolder: 020.detail
owner: Boss
prepared_by: Zero

notification_runtime:
  trigger_sources:
    - deadline_record
    - contract effective_to proximity
    - review cycle candidate
  suppression_rules:
    - deleted records never notify
    - revoked shares never notify advisor scope
    - archived issue does not imply zero notification automatically unless configured
  runtime_priority:
    - overdue first
    - due today second
    - near due third

note:
  - notifications are reminders only
  - notifications do not imply legal conclusion
