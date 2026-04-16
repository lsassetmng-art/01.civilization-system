# ============================================================
# BUSINESS LEGAL SUPPORT ROLE AND PERMISSION MATRIX
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

roles:
  owner:
    description:
      - 本アプリの主要利用者
      - issue と関連記録の正本管理者

  advisor_viewer:
    description:
      - 将来拡張の共有閲覧役
      - 顧問相談向けの閲覧専用立場

permission_matrix:

  create_issue:
    owner: allowed
    advisor_viewer: denied

  update_issue:
    owner: allowed
    advisor_viewer: denied

  archive_issue:
    owner: allowed
    advisor_viewer: denied

  soft_delete_issue:
    owner: allowed
    advisor_viewer: denied

  create_contract_item:
    owner: allowed
    advisor_viewer: denied

  update_contract_item:
    owner: allowed
    advisor_viewer: denied

  view_contract_item:
    owner: allowed
    advisor_viewer: allowed_if_shared

  create_deadline_record:
    owner: allowed
    advisor_viewer: denied

  mark_deadline_completed:
    owner: allowed
    advisor_viewer: denied

  view_deadline_record:
    owner: allowed
    advisor_viewer: allowed_if_shared

  create_risk_note:
    owner: allowed
    advisor_viewer: denied

  view_risk_note:
    owner: allowed
    advisor_viewer: allowed_if_shared

  create_consultation_record:
    owner: allowed
    advisor_viewer: denied

  update_consultation_record:
    owner: allowed
    advisor_viewer: denied

  view_consultation_record:
    owner: allowed
    advisor_viewer: allowed_if_shared

  view_attachment:
    owner: allowed
    advisor_viewer: allowed_if_shared_and_in_scope

  create_attachment:
    owner: allowed
    advisor_viewer: denied

  generate_summary_export:
    owner: allowed
    advisor_viewer: denied

  create_share_record:
    owner: allowed
    advisor_viewer: denied

  revoke_share_record:
    owner: allowed
    advisor_viewer: denied

notes:
  - allowed_if_shared means a valid active share record must exist
  - advisor_viewer never gains edit authority in current design
