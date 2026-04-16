# ============================================================
# BUSINESS LEGAL SUPPORT DATA SENSITIVITY MATRIX
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 100.security
subfolder: 030.data-classification
owner: Boss
prepared_by: Zero

classification:

  normal:
    examples:
      - issue title
      - issue type
      - generic deadline type

  sensitive:
    examples:
      - counterparty contact note
      - consultation memo
      - risk note summary
      - timeline note

  highly_sensitive:
    examples:
      - attached contract file
      - evidence file
      - dispute details
      - privileged-looking preparation notes

rules:
  - advisor share defaults to summary-oriented exposure
  - highly_sensitive data should not be shared by default
  - attachment visibility should always be narrower than issue root visibility when needed
