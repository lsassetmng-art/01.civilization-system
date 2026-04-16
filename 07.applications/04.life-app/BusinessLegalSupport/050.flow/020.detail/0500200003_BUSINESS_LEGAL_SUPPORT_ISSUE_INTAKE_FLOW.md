# ============================================================
# BUSINESS LEGAL SUPPORT ISSUE INTAKE FLOW
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 050.flow
subfolder: 020.detail
owner: Boss
prepared_by: Zero

intake_steps:
  - choose issue_type
  - set title
  - write summary
  - set priority
  - decide whether contract exists
  - decide whether deadline exists
  - decide whether counterparty exists
  - save as active or draft

minimum_completion_rule:
  - title
  - issue_type
  - status
  - summary or next_action のどちらか一方

after_create_recommendations:
  - suggest contract_item if contract-related
  - suggest deadline_record if expiring or response-based
  - suggest checklist if consultation expected
  - suggest trouble_timeline if dispute-related
