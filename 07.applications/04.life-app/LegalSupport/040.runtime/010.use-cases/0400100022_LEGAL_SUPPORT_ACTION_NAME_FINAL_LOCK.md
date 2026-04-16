# ============================================================
# LEGAL SUPPORT ACTION NAME FINAL LOCK
# ============================================================

status: draft-formal
system: LegalSupport
layer: runtime
subdomain: use-cases
schema: life

purpose:
  - action 名の揺れを止める
  - request / response exact の共通参照名を固定する
  - audit / UI / API の接続基準を統一する

naming_principles:
  - 動詞 + 対象名の lower_snake_case を採用する
  - list / get / create / update / archive / reopen / duplicate / soft_delete / restore を標準動詞とする
  - preview は preview を action 名に含める
  - 将来拡張 action は future suffix ではなく、文書内 status で管理する

final_locked_actions:

  case_core:
    - create_legal_case
    - update_legal_case
    - list_legal_case
    - search_legal_case
    - get_legal_case_detail
    - archive_legal_case
    - reopen_legal_case
    - duplicate_legal_case

  fact_timeline:
    - create_fact_timeline
    - update_fact_timeline
    - list_fact_timeline
    - reorder_fact_timeline
    - soft_delete_fact_timeline
    - restore_fact_timeline

  stakeholder:
    - create_stakeholder
    - update_stakeholder
    - list_stakeholder
    - soft_delete_stakeholder
    - restore_stakeholder

  document_item:
    - create_document_item
    - update_document_item
    - create_document_item_extended
    - update_document_item_extended
    - list_document_item
    - mark_document_verified
    - promote_document_due_to_deadline
    - soft_delete_document_item
    - restore_document_item

  question_list:
    - create_question
    - update_question
    - list_question
    - soft_delete_question
    - restore_question

  consultation_note:
    - create_consultation_note
    - update_consultation_note
    - list_consultation_note
    - soft_delete_consultation_note
    - restore_consultation_note

  action_item:
    - create_action_item
    - update_action_item
    - list_action_item
    - soft_delete_action_item
    - restore_action_item

  deadline_item:
    - create_deadline_item
    - update_deadline_item
    - list_deadline_item
    - soft_delete_deadline_item
    - restore_deadline_item

  expense_record:
    - create_expense_record
    - update_expense_record
    - list_expense_record
    - soft_delete_expense_record
    - restore_expense_record

  checklist:
    - get_category_checklist
    - initialize_checklist_progress
    - list_checklist_progress
    - update_checklist_progress

  family_share:
    - enable_family_share
    - disable_family_share
    - list_family_shared_case_view
    - invite_family_member
    - accept_family_invitation
    - decline_family_invitation
    - revoke_family_membership
    - list_family_memberships
    - get_family_share_masking_preview

  notification:
    - list_notification_preferences
    - upsert_notification_preference

  dashboard:
    - get_dashboard
    - get_owner_dashboard
    - get_family_dashboard

  summary_export:
    - generate_case_summary
    - generate_question_summary
    - generate_consultation_prep_packet
    - create_export_bundle

  handoff:
    - preview_cross_app_handoff
    - create_cross_app_handoff

action_name_rules:
  - get は単体詳細または単一集約取得
  - list は一覧
  - search は keyword + filter 一覧
  - preview は非破壊確認
  - create は新規生成
  - update は差分更新
  - soft_delete は復元可能削除
  - restore は soft_delete 復元
