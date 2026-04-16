# ============================================================
# LEGAL SUPPORT AUDIT ACTION MATRIX
# ============================================================

status: draft-formal
system: LegalSupport
layer: meta
subdomain: audit
schema: life

audit_action_matrix:

  case_actions:
    - create_legal_case
    - update_legal_case
    - archive_legal_case
    - reopen_legal_case
    - duplicate_legal_case
    - enable_family_share
    - disable_family_share

  child_actions:
    - create_fact_timeline
    - update_fact_timeline
    - reorder_fact_timeline
    - soft_delete_fact_timeline
    - restore_fact_timeline

    - create_stakeholder
    - update_stakeholder
    - soft_delete_stakeholder
    - restore_stakeholder

    - create_document_item
    - create_document_item_extended
    - update_document_item
    - update_document_item_extended
    - mark_document_verified
    - soft_delete_document_item
    - restore_document_item

    - create_question
    - update_question
    - soft_delete_question
    - restore_question

    - create_consultation_note
    - update_consultation_note
    - soft_delete_consultation_note
    - restore_consultation_note

    - create_action_item
    - update_action_item
    - soft_delete_action_item
    - restore_action_item

    - create_deadline_item
    - update_deadline_item
    - soft_delete_deadline_item
    - restore_deadline_item

    - create_expense_record
    - update_expense_record
    - soft_delete_expense_record
    - restore_expense_record

  checklist_actions:
    - initialize_checklist_progress
    - update_checklist_progress

  family_share_actions:
    - invite_family_member
    - accept_family_invitation
    - decline_family_invitation
    - revoke_family_membership

  notification_actions:
    - upsert_notification_preference

  export_and_summary_actions:
    - create_export_bundle
    - generate_case_summary
    - generate_question_summary
    - generate_consultation_prep_packet

recommended_severity:
  high:
    - archive_legal_case
    - reopen_legal_case
    - enable_family_share
    - disable_family_share
    - revoke_family_membership
    - create_export_bundle
  medium:
    - update_legal_case
    - update_document_item_extended
    - mark_document_verified
    - upsert_notification_preference
  low:
    - list actions
    - dashboard reads
    - preview generation without export

audit_rules:
  - list/read 系は既定で audit 対象外でもよい
  - export 実行は必ず audit 対象
  - family share 権限変化は必ず audit 対象
  - AI summary は preview のみなら軽量ログでもよい
