# ============================================================
# LEGAL SUPPORT SUMMARY EXPORT PROFILE VARIANTS EXACT
# ============================================================

status: draft-formal
system: LegalSupport
layer: runtime
subdomain: use-cases
schema: life

principles:
  - summary と export は profile ごとに含有範囲を固定する
  - 目的別に profile を分け、過剰共有を防ぐ
  - 法的結論ではなく整理支援出力に限定する
  - professional 向けは将来拡張として profile 定義だけ先行する

summary_profiles:

  case_overview:
    target_users:
      - owner
    sections:
      - case_summary
      - key_facts
      - unresolved_points
      - next_actions
      - upcoming_deadlines
    excludes_by_default:
      - expense_details
      - private_notes
      - assumption_text

  consultation_prep:
    target_users:
      - owner
    sections:
      - case_summary
      - timeline_summary
      - key_stakeholders
      - document_checklist
      - open_questions
      - next_actions
      - upcoming_deadlines
    excludes_by_default:
      - expense_details
      - family membership internal state
      - assumption_text
      - private_notes

  family_share:
    target_users:
      - shared_family_viewer
    sections:
      - case_summary
      - selected_timeline_summary
      - selected_document_checklist
      - selected_next_actions
      - selected_upcoming_deadlines
    excludes_by_default:
      - expense_details
      - internal_questions
      - private_notes
      - assumption_text
      - contact_note
      - membership_internal_log

  professional_future:
    target_users:
      - professional_share_target
    sections:
      - case_summary
      - timeline_summary
      - key_stakeholders
      - document_checklist
      - open_questions
      - upcoming_deadlines
    excludes_by_default:
      - family-only notes
      - private_notes
      - internal audit references
    status:
      - future_only

export_profiles:

  self_pdf_full:
    output_format:
      - pdf
    includes:
      - case_summary
      - timeline_summary
      - key_stakeholders
      - document_checklist
      - open_questions
      - next_actions
      - upcoming_deadlines
      - expense_summary_optional
    excludes:
      - audit metadata
      - membership internal state

  family_pdf_compact:
    output_format:
      - pdf
    includes:
      - case_summary
      - selected_timeline_summary
      - selected_document_checklist
      - selected_next_actions
      - selected_upcoming_deadlines
    excludes:
      - expense_details
      - private_notes
      - assumption_text
      - internal questions
      - internal contact notes

  consultation_packet_preview:
    output_format:
      - screen_preview
      - pdf
    includes:
      - case_summary
      - timeline_summary
      - key_stakeholders
      - document_checklist
      - open_questions
      - next_actions
      - upcoming_deadlines
    excludes:
      - audit metadata
      - private notes
      - assumption_text

profile_rules:
  - family_share profile は plus_family 前提
  - professional_future profile は初期無効
  - self_pdf_full でも private notes を既定除外してよい
  - expense_summary_optional は owner のみ任意含有
