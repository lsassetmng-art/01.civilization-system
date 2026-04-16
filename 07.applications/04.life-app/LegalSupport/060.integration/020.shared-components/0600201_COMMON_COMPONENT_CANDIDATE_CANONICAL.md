# ============================================================
# COMMON COMPONENT CANDIDATE CANONICAL
# LegalSupport
# ============================================================

status: canonical-draft
phase: design-only

common_component_addition_candidates:

  case_ledger_component:
    purpose:
      - 案件単位管理の共通化
    candidate_reuse_targets:
      - LegalSupport
      - InheritanceSupport
      - EndOfLifePlanner related workflows
    notes:
      - 案件名
      - 状態
      - 次アクション
      - 機密度既定

  stakeholder_registry_component:
    purpose:
      - 関係者整理の共通化
    candidate_reuse_targets:
      - LegalSupport
      - InheritanceSupport
      - BusinessLegalSupport future candidate
    notes:
      - 関係者種別
      - ownerとの関係
      - 役割メモ
      - 重要フラグ

  fact_timeline_component:
    purpose:
      - 時系列整理の共通化
    candidate_reuse_targets:
      - LegalSupport
      - InheritanceSupport
      - EndOfLifePlanner partial candidate
    notes:
      - 発生日
      - タイトル
      - 詳細
      - 確度
      - 参照元

  document_metadata_component:
    purpose:
      - 書類 metadata 整理の共通化
    candidate_reuse_targets:
      - LegalSupport
      - InheritanceSupport
      - MoneyPlanner related document support future
    notes:
      - title
      - category
      - issuer
      - issued_on
      - confidentiality_level
      - reviewed_flag

  consultation_log_component:
    purpose:
      - 面談記録の共通化
    candidate_reuse_targets:
      - LegalSupport
      - InheritanceSupport
      - BusinessLegalSupport future candidate
    notes:
      - consulted_at
      - advisor_name
      - unresolved_points
      - next_steps

  task_deadline_component:
    purpose:
      - タスクと期限管理の共通化
    candidate_reuse_targets:
      - LegalSupport
      - InheritanceSupport
      - EndOfLifePlanner
      - other LifeOS planning apps
    notes:
      - task
      - deadline
      - severity
      - completion_flag

  share_pack_component:
    purpose:
      - 共有パック生成の共通化
    candidate_reuse_targets:
      - LegalSupport
      - InheritanceSupport
      - EndOfLifePlanner partial candidate
    notes:
      - included_sections
      - redaction_level
      - artifact metadata

commonization_rules:
  - LegalSupport 固有の法務判断ロジックは共通部品化しない
  - 共通化対象は整理構造と metadata に寄せる
  - app 固有の表示文言や判断誘導は残す

priority_order:
  - stakeholder_registry_component
  - fact_timeline_component
  - document_metadata_component
  - task_deadline_component
  - share_pack_component
  - case_ledger_component
  - consultation_log_component
