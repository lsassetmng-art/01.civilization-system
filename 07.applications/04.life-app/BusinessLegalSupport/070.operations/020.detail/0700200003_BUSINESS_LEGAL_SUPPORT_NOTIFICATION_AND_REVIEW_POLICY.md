# ============================================================
# BUSINESS LEGAL SUPPORT NOTIFICATION AND REVIEW POLICY
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 070.operations
subfolder: 020.detail
owner: Boss
prepared_by: Zero

notification_defaults:
  - contract_end_30d
  - contract_end_7d
  - reply_due_3d
  - due_today

review_policy:
  - reminders are guidance only
  - reminders do not imply legal conclusion
  - high severity risk_note can strengthen attention but not auto-close or auto-share
