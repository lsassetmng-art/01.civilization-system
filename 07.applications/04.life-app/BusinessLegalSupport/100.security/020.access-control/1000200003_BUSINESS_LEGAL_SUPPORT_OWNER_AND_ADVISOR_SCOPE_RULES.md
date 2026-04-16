# ============================================================
# BUSINESS LEGAL SUPPORT OWNER AND ADVISOR SCOPE RULES
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 100.security
subfolder: 020.access-control
owner: Boss
prepared_by: Zero

owner_scope:
  includes:
    - full issue view
    - full child records view
    - create / update / archive / soft delete
    - share and revoke
    - export and summary generation
  excludes:
    - enterprise legal truth declaration
    - automatic BusinessOS or ERP write

advisor_viewer_scope:
  includes:
    - summary view when shared
    - selected record view when shared
    - full issue read-only view when explicitly shared
  excludes:
    - any create
    - any update
    - any delete
    - any share to third party
    - ownership transfer
    - source-of-truth override

share_scope_mapping:
  summary_only:
    advisor_visible:
      - issue_summary
      - facts
      - deadlines summary
      - risk summary
      - questions_for_expert
      - next_actions

  selected_records:
    advisor_visible:
      - selected contracts
      - selected deadlines
      - selected risk notes
      - selected consultation notes

  full_issue_view:
    advisor_visible:
      - issue root
      - all current child records within share snapshot scope

rules:
  - share scope is selected by owner
  - advisor view must not silently expand scope
  - revoked share removes future visibility
