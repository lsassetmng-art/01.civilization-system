# ============================================================
# LEGAL SUPPORT SHARE GUARD POLICY
# ============================================================

status: draft-formal
system: LegalSupport
layer: security
subdomain: access-control

share_guard_rules:
  - 共有前に対象案件を明示する
  - 共有前に除外書類を確認する
  - 共有前に含有セクションを確認する
  - PDF出力前に共有対象を再確認する

shareable_sections:
  - case_summary
  - timeline_summary
  - stakeholder_summary_selected
  - document_checklist_selected
  - question_list_selected
  - action_deadline_summary

non_shareable_by_default:
  - owner_private_notes
  - unverified_assumptions
  - internal_drafts
  - hidden_documents

guard_checks:
  - empty_target_check
  - over_inclusion_check
  - hidden_document_check
  - disclaimer_display_check

future_security_extensions:
  - 詳細監査ログ
  - 共有履歴一覧
  - 専門家向け限定共有モード
