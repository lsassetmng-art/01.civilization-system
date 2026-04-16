# ============================================================
# BUSINESS LEGAL SUPPORT CORE USER JOURNEYS
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

journeys:

  contract_management:
    - create legal_issue
    - register contract_item
    - register deadline_record
    - add counterparty
    - attach contract file
    - review renewal notice timing

  trouble_response:
    - create legal_issue
    - add trouble_timeline
    - add evidence attachments
    - add risk_note
    - prepare consultation_record
    - generate summary output

  policy_review:
    - create legal_issue
    - classify as terms_and_policy
    - add checklist items
    - add risk_note
    - prepare next_check_items

  advisor_share:
    - finalize issue summary
    - select share scope
    - create advisor_share_record
    - confirm shared material
