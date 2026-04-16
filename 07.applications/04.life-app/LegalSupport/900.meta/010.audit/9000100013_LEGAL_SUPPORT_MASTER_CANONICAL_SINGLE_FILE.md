# ============================================================
# LEGAL SUPPORT MASTER CANONICAL SINGLE FILE
# ============================================================

status: draft-formal
system: LegalSupport
layer: meta
subdomain: audit

purpose:
  - LegalSupport の主要決定事項を1ファイルで再読できるようにする
  - 個別文書を全部追わなくても、全体設計の輪郭を把握できるようにする
  - 実装再開前の上位正本サマリとして使う

# ------------------------------------------------------------
# 1. fixed foundations
# ------------------------------------------------------------
foundations:
  schema:
    primary_schema: life
  pricing:
    free:
      monthly_price_jpy: 0
    plus_family:
      monthly_price_jpy: 500
  implementation_policy:
    - 実装はまだ始めない
    - 設計正本を先に固める
  service_boundary:
    - 法的助言を提供しない
    - 法的結論を提供しない
    - 相談準備・整理・記録支援に限定する

# ------------------------------------------------------------
# 2. app positioning
# ------------------------------------------------------------
positioning:
  - 個人法務の整理入口
  - 専門家相談の前後をつなぐ整理アプリ
  - 家族共有、終活、相続、生活設計との接続を持つ
  - LifeOS 内で他アプリへ handoff できる起点アプリ

# ------------------------------------------------------------
# 3. plans and roles
# ------------------------------------------------------------
plans:
  free:
    purpose:
      - 基本整理
  plus_family:
    purpose:
      - 家族共有
      - PDF出力
      - AI整理要約
      - 期限強化
      - 相談前準備強化

roles:
  owner:
    rights:
      - 全件管理
      - create/update/archive/reopen
      - export/handoff
      - family share 管理
  shared_family_viewer:
    rights:
      - 共有範囲のみ閲覧
    restrictions:
      - 編集不可
      - export不可
      - destructive action不可
  professional_share_target_future:
    rights:
      - 将来拡張

# ------------------------------------------------------------
# 4. core entities
# ------------------------------------------------------------
entities:
  primary:
    - life.legal_case
    - life.fact_timeline
    - life.stakeholder
    - life.document_item
    - life.question_list
    - life.consultation_note
    - life.action_item
    - life.deadline_item
    - life.expense_record
    - life.export_bundle
  support:
    - life.checklist_progress
    - life.family_share_membership
    - life.notification_preference
  audit_related:
    - life.legal_support_audit_log
    - life.legal_support_handoff_audit_log

# ------------------------------------------------------------
# 5. major modules
# ------------------------------------------------------------
modules:
  - case_management
  - fact_timeline_management
  - stakeholder_management
  - document_management
  - question_management
  - consultation_history_management
  - action_deadline_management
  - family_share_export
  - template_navigation
  - summary_handoff_support

# ------------------------------------------------------------
# 6. sharing / masking / confidentiality
# ------------------------------------------------------------
sharing_model:
  visibility_scope:
    - private
    - family_shared
  family_share_rules:
    - plus_family only
    - active membership required
    - field-level masking required
    - preview before export/handoff/share is recommended
  masking_baseline:
    - assumption_text hidden from family
    - private notes hidden
    - expense hidden from family by default
    - confidential private documents hidden
  confidentiality_levels:
    - normal
    - sensitive
    - private

# ------------------------------------------------------------
# 7. major output profiles
# ------------------------------------------------------------
summary_profiles:
  - case_overview
  - consultation_prep
  - family_share
  - professional_future

export_profiles:
  - self_pdf_full
  - family_pdf_compact
  - consultation_packet_preview

handoff_targets:
  - InheritanceSupport
  - BusinessLegalSupport
  - EndOfLifePlanner
  - MoneyPlanner_future

# ------------------------------------------------------------
# 8. dashboard split
# ------------------------------------------------------------
dashboards:
  owner_dashboard:
    includes:
      - active_case_summary
      - upcoming_deadlines
      - unresolved_documents
      - next_confirmation_points
      - family_shared_updates
      - recent_exports
      - checklist_progress_overview
  family_dashboard:
    includes:
      - shared_case_summary
      - upcoming_shared_deadlines
      - shared_documents_to_prepare
      - shared_next_actions
    excludes:
      - expense
      - private_notes
      - owner-only controls

# ------------------------------------------------------------
# 9. action / response lock
# ------------------------------------------------------------
action_policy:
  - lower_snake_case
  - preview and execute separated
  - create / update / list / get / archive / reopen / duplicate / soft_delete / restore を基本動詞とする

response_policy:
  success_envelope:
    - action
    - success
    - data
    - message
    - meta
  error_envelope:
    - action
    - success=false
    - data=null
    - message
    - errors
    - meta

# ------------------------------------------------------------
# 10. design completion state
# ------------------------------------------------------------
design_completed_areas:
  - field matrix
  - enum registry
  - controlled vocabulary
  - nullable/default
  - create/update/list exact payloads
  - archive/reopen/duplicate
  - delete/soft delete/restore
  - checklist
  - family share and memberships
  - notification preferences
  - dashboard split
  - summary/export/handoff
  - masking/confidentiality/capability
  - audit major structure
  - canonical consolidation and gap checklist

intentionally_deferred:
  - professional direct collaboration editing
  - OCR/file binary exact
  - external public sharing
  - human support workflow
  - final implementation DDL/code

use_this_file_when:
  - 全体像を素早く再確認したい時
  - 実装開始前の最終レビュー時
  - 他チャットへ引き継ぐ時
