# ============================================================
# LEGAL SUPPORT EXACT PAYLOAD BUNDLE SUMMARY
# ============================================================

status: draft-formal
system: LegalSupport
layer: runtime
subdomain: use-cases
schema: life

purpose:
  - ここまで定義した major payload 群を一覧化する
  - 実装前に action の抜け漏れを見つけやすくする
  - request/response exact 群の案内索引として使う

payload_bundles:

  case_core_bundle:
    actions:
      - create_legal_case
      - update_legal_case
      - list_legal_case
      - search_legal_case
      - get_legal_case_detail
      - archive_legal_case
      - reopen_legal_case
      - duplicate_legal_case

  fact_bundle:
    actions:
      - create_fact_timeline
      - update_fact_timeline
      - reorder_fact_timeline
      - list_fact_timeline
      - soft_delete_fact_timeline
      - restore_soft_deleted_child

  stakeholder_bundle:
    actions:
      - create_stakeholder
      - update_stakeholder
      - list_stakeholder
      - soft_delete_stakeholder
      - restore_soft_deleted_child

  document_bundle:
    actions:
      - create_document_item
      - update_document_item
      - create_document_item_extended
      - update_document_item_extended
      - mark_document_verified
      - list_document_item
      - soft_delete_document_item
      - restore_soft_deleted_child
      - promote_document_due_to_deadline

  question_bundle:
    actions:
      - create_question
      - update_question
      - list_question
      - soft_delete_question
      - restore_soft_deleted_child

  consultation_bundle:
    actions:
      - create_consultation_note
      - update_consultation_note
      - list_consultation_note
      - soft_delete_consultation_note
      - restore_soft_deleted_child

  action_deadline_bundle:
    actions:
      - create_action_item
      - update_action_item
      - list_action_item
      - create_deadline_item
      - update_deadline_item
      - list_deadline_item
      - soft_delete_action_item
      - soft_delete_deadline_item
      - restore_soft_deleted_child

  expense_bundle:
    actions:
      - create_expense_record
      - update_expense_record
      - list_expense_record
      - soft_delete_expense_record
      - restore_soft_deleted_child

  checklist_bundle:
    actions:
      - get_category_checklist
      - initialize_checklist_progress
      - list_checklist_progress
      - update_checklist_progress

  family_share_bundle:
    actions:
      - enable_family_share
      - disable_family_share
      - list_family_shared_case_view
      - invite_family_member
      - accept_family_invitation
      - decline_family_invitation
      - revoke_family_membership
      - list_family_memberships
      - get_family_share_masking_preview

  notification_bundle:
    actions:
      - list_notification_preferences
      - upsert_notification_preference

  dashboard_bundle:
    actions:
      - get_dashboard
      - get_owner_dashboard
      - get_family_dashboard

  summary_export_bundle:
    actions:
      - generate_case_summary
      - generate_question_summary
      - generate_consultation_prep_packet
      - create_export_bundle

  handoff_bundle:
    actions:
      - cross_app_handoff_preview_future_or_current_preview_mode
      - create_cross_app_handoff_future_exact

summary_notes:
  - create_cross_app_handoff は policy / handoff payload exact まで定義済みで、action name exact は今後分離してもよい
  - restore_soft_deleted_child は child entity 共通 restore action としてまとめている
  - family share preview / export / handoff は masking matrix と capability matrix を前提にする
