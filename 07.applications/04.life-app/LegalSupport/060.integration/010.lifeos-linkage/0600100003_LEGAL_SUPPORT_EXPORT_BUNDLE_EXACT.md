# ============================================================
# LEGAL SUPPORT EXPORT BUNDLE EXACT
# ============================================================

status: draft-formal
system: LegalSupport
layer: integration
subdomain: lifeos-linkage
schema: life

export_bundle_definition:
  entity: life.export_bundle

export_targets:
  - self
  - family
  - professional_future

export_sections:
  case_summary:
    includes:
      - title
      - category
      - status
      - priority
      - summary

  timeline_summary:
    includes:
      - event_date
      - event_date_precision
      - event_type
      - fact_text
      - verification_status
    excludes:
      - assumption_text by default

  stakeholder_summary_selected:
    includes:
      - stakeholder_type
      - display_name
      - relation_to_case
    excludes:
      - contact_note by default

  document_checklist_selected:
    includes:
      - document_category
      - document_name
      - possession_status
      - submission_status
      - important_flag

  question_list_selected:
    includes:
      - question_text
      - question_status
      - priority

  action_deadline_summary:
    includes:
      - action_item title
      - action_status
      - due_date
      - deadline_type
      - deadline_date
      - urgency_level

export_policy:
  - included_sections は明示選択
  - hidden_documents は export 対象外
  - owner_private_notes は export 対象外
  - assumption_text は標準では export 対象外
  - professional_future は将来拡張で初期無効

default_export_profile:
  family:
    - case_summary
    - timeline_summary
    - document_checklist_selected
    - action_deadline_summary

pdf_profile_notes:
  - PDF は共有前最終確認必須
  - 出力履歴は life.export_bundle に保持
