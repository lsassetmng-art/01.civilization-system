# ============================================================
# BUSINESS LEGAL SUPPORT NOTIFICATION AND JOB ASSUMPTIONS
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 110.infrastructure
subfolder: 020.detail
owner: Boss
prepared_by: Zero

job_assumptions:
  - near-deadline check job
  - expiring-contract check job
  - summary generation request handling
  - share visibility refresh logic

notification_assumptions:
  - in-app first
  - push-ready later if needed
  - advisor notification not assumed in current base design
