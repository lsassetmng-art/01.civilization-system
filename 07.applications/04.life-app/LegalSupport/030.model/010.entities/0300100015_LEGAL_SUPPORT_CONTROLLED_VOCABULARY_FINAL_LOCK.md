# ============================================================
# LEGAL SUPPORT CONTROLLED VOCABULARY FINAL LOCK
# ============================================================

status: draft-formal
system: LegalSupport
layer: model
subdomain: entities
schema: life

purpose:
  - enum registry を補完し、アプリ全体で使う主要語彙を固定する
  - screen / payload / audit / export / share / handoff で表現を統一する
  - 実装前に naming の揺れを止める

principles:
  - 内部正本語彙は English lower_snake_case を基本とする
  - UI表示文言は別で持ってよいが、内部語彙は揺らさない
  - 類義語を複数採用しない
  - 既存語彙と矛盾する新語彙追加を避ける

controlled_vocabulary:

  app_terms:
    app_name_internal:
      - LegalSupport
    domain_name_internal:
      - personal_legal_support
    schema_name:
      - life

  role_terms:
    - owner
    - shared_family_viewer
    - professional_share_target_future

  plan_terms:
    - free
    - plus_family

  visibility_terms:
    - private
    - family_shared

  summary_profile_terms:
    - case_overview
    - consultation_prep
    - family_share
    - professional_future

  export_profile_terms:
    - self_pdf_full
    - family_pdf_compact
    - consultation_packet_preview

  dashboard_terms:
    - dashboard
    - owner_dashboard
    - family_dashboard

  widget_terms:
    - active_case_summary
    - upcoming_deadlines
    - unresolved_documents
    - next_confirmation_points
    - family_shared_updates
    - recent_exports
    - checklist_progress_overview
    - shared_case_summary
    - upcoming_shared_deadlines
    - shared_documents_to_prepare
    - shared_next_actions

  share_terms:
    - family_share
    - family_share_membership
    - family_share_masking_preview
    - active_membership
    - membership_status
    - permission_role

  handoff_terms:
    - preview_cross_app_handoff
    - create_cross_app_handoff
    - handoff_target_app
    - handoff_reason
    - payload_digest

  document_confidentiality_terms:
    - normal
    - sensitive
    - private

  checklist_terms:
    - category_checklist
    - checklist_progress
    - completion_rate

  response_terms:
    - action
    - success
    - data
    - message
    - meta
    - errors
    - items
    - preview
    - result

  error_term_baseline:
    - validation_error
    - unauthorized
    - forbidden_owner_only
    - plus_family_required
    - archived_case_not_mutable
    - confidentiality_violation
    - legal_case_not_found

banned_or_avoided_variants:
  - family_plan
  - pro_family
  - viewer_family
  - case_share_mode
  - ai_legal_advice
  - public_share_link
  - full_legal_judgement

normalization_notes:
  - plus_family は統合プラン名の内部正本
  - family_share は共有モード名であり料金プラン名ではない
  - professional_future は現時点で無効だが語彙は固定する
  - owner_dashboard / family_dashboard は別action・別screen用語として維持する
