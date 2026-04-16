# ============================================================
# BUSINESS LEGAL SUPPORT RUNTIME EVENT CHAIN
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

event_chain_examples:
  create_issue_flow:
    - owner creates legal_issue
    - optional contract_item creation
    - optional deadline_record creation
    - dashboard refresh candidate

  deadline_update_flow:
    - owner creates or updates deadline_record
    - reminder candidate set recalculated
    - issue detail deadline section refreshed

  consultation_prep_flow:
    - owner updates consultation_record
    - owner updates checklist items
    - summary generation becomes available

  share_flow:
    - owner generates summary
    - owner creates advisor share record
    - future advisor visibility opens in read-only scope
