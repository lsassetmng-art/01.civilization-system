# ============================================================
# BUSINESS LEGAL SUPPORT SUMMARY GENERATION RUNTIME
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

summary_runtime:
  input_sources:
    - legal_issue root
    - contract subset
    - deadline subset
    - risk_note subset
    - consultation_record
    - checklist items
    - timeline events
  output_character:
    - consultation support summary
    - owner oriented summary first
    - advisor share compatible summary second
  hard_rules:
    - no legal conclusion generation
    - no enterprise truth declaration
    - generated_at always attached
