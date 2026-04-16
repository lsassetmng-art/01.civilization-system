# ============================================================
# BUSINESS LEGAL SUPPORT HANDOFF RULES
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 060.integration
subfolder: 020.detail
owner: Boss
prepared_by: Zero

handoff_rules:
  - handoff must be user-triggered
  - handoff must declare destination
  - handoff must declare scope
  - handoff must never imply deletion of original life-side source
  - handoff summary should be generated before transfer decision

handoff_scope_examples:
  - summary_only
  - selected_records
  - issue_and_contracts
  - issue_full_bundle
