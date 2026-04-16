# ============================================================
# BUSINESS LEGAL SUPPORT STATUS AND ENUM RULES
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 030.model
subfolder: 020.detail
owner: Boss
prepared_by: Zero

issue_type:
  - contract
  - labor
  - terms_and_policy
  - transaction_trouble
  - collection_and_payment
  - company_memo
  - other

issue_status:
  - draft
  - active
  - waiting_external_reply
  - waiting_owner_action
  - completed
  - archived

priority:
  - low
  - medium
  - high
  - critical

contract_status:
  - draft
  - signed
  - active
  - expiring
  - ended
  - canceled

deadline_type:
  - contract_end
  - renewal_notice
  - reply_due
  - submission_due
  - internal_check
  - other

risk_severity:
  - low
  - medium
  - high
  - critical

share_scope:
  - summary_only
  - selected_records
  - full_issue_view

rules:
  - legal_issue.status and contract_item.status are independent
  - deadline completion does not automatically close issue
  - share_scope never grants edit authority in current design
  - critical severity only marks urgency and is not a legal conclusion
