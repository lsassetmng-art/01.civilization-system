# ============================================================
# PHASE 1 APP REFERENCE NOTE
# Life App Common
# ============================================================

status: canonical
phase: design-only

purpose:
  - phase_1 最優先6件を各 Life app がどう参照するかを固定する
  - appごとの採用優先度と使いどころを明文化する

app_reference_note:

  CareerLaunch:
    strongest_reference_components:
      - case_ledger_component
      - stakeholder_registry_component
      - fact_timeline_component
      - document_intake_metadata_component
      - frozen_snapshot_component
      - review_resolution_component
    reference_reason:
      - 応募案件管理
      - 面接 / 連絡 / 提出履歴整理
      - 応募書類 intake
      - 提出版固定
      - advisor / reviewer コメント解決
    integration_note:
      - Document Template Common
      - Revision History Common
      - Checklist Execution Common
      - Status Pipeline Common
      との橋渡し優先度が高い

  LegalSupport:
    strongest_reference_components:
      - case_ledger_component
      - stakeholder_registry_component
      - fact_timeline_component
      - document_intake_metadata_component
      - frozen_snapshot_component
      - review_resolution_component
    reference_reason:
      - 相談案件整理
      - 関係者整理
      - 事実整理
      - 書類整理
      - 提出/共有版固定
      - 指摘対応管理
    integration_note:
      - Consultation系共通
      - Export Common
      - Advisor Share Common
      との橋渡しが有効

  InheritanceSupport:
    strongest_reference_components:
      - case_ledger_component
      - stakeholder_registry_component
      - fact_timeline_component
      - document_intake_metadata_component
      - frozen_snapshot_component
      - review_resolution_component
    reference_reason:
      - 手続き案件整理
      - 相続関係者整理
      - 事実経緯整理
      - 書類 intake
      - 提出版固定
      - レビュー解決管理
    integration_note:
      - Consultation系共通
      - Export Common
      - Advisor Share Common
      との橋渡しが有効

  EndOfLifePlanner:
    strongest_reference_components:
      - case_ledger_component
      - stakeholder_registry_component
      - fact_timeline_component
      - document_intake_metadata_component
      - frozen_snapshot_component
    secondary_reference_components:
      - review_resolution_component
    reference_reason:
      - 準備案件整理
      - 家族/関係者整理
      - 出来事整理
      - 文書 intake
      - 共有版固定
    integration_note:
      - Checklist Execution Common
      - Export Common
      - Persona and Background Display Common
      との橋渡しを後続検討する

  MoneyPlanner_partial_reuse:
    strongest_reference_components:
      - document_intake_metadata_component
      - frozen_snapshot_component
    secondary_reference_components:
      - fact_timeline_component
    reference_reason:
      - 関連書類 intake
      - 出力固定
      - 一部時系列整理
    integration_note:
      - partial reuse 前提
      - 全面採用ではなく文書系接続中心

adoption_strength_summary:
  strongest_cross_app_core:
    - case_ledger_component
    - stakeholder_registry_component
    - fact_timeline_component
    - document_intake_metadata_component
    - frozen_snapshot_component

  review_heavy_apps_priority:
    - review_resolution_component

reference_judgment:
  - CareerLaunch / LegalSupport / InheritanceSupport では6件フル参照が自然
  - EndOfLifePlanner は5件強 + review_resolution_component 準採用が自然
  - MoneyPlanner は partial reuse が自然
