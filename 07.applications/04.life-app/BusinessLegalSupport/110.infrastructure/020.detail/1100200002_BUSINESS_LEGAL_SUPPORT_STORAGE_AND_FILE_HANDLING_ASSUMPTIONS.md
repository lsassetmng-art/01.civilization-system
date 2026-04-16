# ============================================================
# BUSINESS LEGAL SUPPORT STORAGE AND FILE HANDLING ASSUMPTIONS
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

storage_assumptions:
  relational_data:
    - life schema tables
  file_like_data:
    - attachment metadata in relational store
    - file body in file/object storage compatible layer

file_handling_rules:
  - metadata first, file second
  - attachment access policy must be checked before file open
  - share scope and file access scope are separable
