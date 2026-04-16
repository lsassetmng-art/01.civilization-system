# ============================================================
# BUSINESS LEGAL SUPPORT DATA AND API REVIEW CHECKLIST
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 130.development
subfolder: 020.review-checklist
owner: Boss
prepared_by: Zero

data_api_review:
  - schema is still life
  - payload names and table names align
  - status transitions and API operations align
  - soft delete policy is consistent
  - list/read/write contracts are consistent
  - share scope and read visibility are consistent
