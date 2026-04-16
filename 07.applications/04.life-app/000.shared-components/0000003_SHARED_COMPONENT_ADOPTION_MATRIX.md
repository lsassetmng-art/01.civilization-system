# ============================================================
# SHARED COMPONENT ADOPTION MATRIX
# Life App Common
# ============================================================

status: canonical
phase: design-only

adoption_matrix:

  CareerLaunch:
    strongest_adoption_targets:
      - case_ledger_component
      - stakeholder_registry_component
      - fact_timeline_component
      - document_intake_metadata_component
      - frozen_snapshot_component
      - review_resolution_component
      - deadline_notification_policy_component
      - offline_draft_conflict_component
      - ai_suggestion_audit_component
    foundation_components_to_reference:
      - Document Template Common
      - Revision History Common
      - Checklist Execution Common
      - Status Pipeline Common
      - Offline Draft Queue Common
      - Export Common
      - Multilingual Label Common
      - Persona and Background Display Common
      - Advisor Share Common
    notes:
      - 文書作成、応募進行、面接準備、レビュー共有との相性が強い
      - frozen snapshot と revision history の接続優先度が高い

  LegalSupport:
    strongest_adoption_targets:
      - case_ledger_component
      - stakeholder_registry_component
      - fact_timeline_component
      - document_intake_metadata_component
      - frozen_snapshot_component
      - review_resolution_component
      - deadline_notification_policy_component
      - share_export_pack_component
      - search_tag_cross_filter_component
      - ai_suggestion_audit_component
    foundation_components_to_reference:
      - Checklist Execution Common
      - Export Common
      - Advisor Share Common
      - Persona and Background Display Common
    notes:
      - 相談前整理、証拠管理、共有提出、監査との相性が強い
      - 法的判断ロジック自体は共通部品に含めない

  InheritanceSupport:
    strongest_adoption_targets:
      - case_ledger_component
      - stakeholder_registry_component
      - fact_timeline_component
      - document_intake_metadata_component
      - frozen_snapshot_component
      - review_resolution_component
      - deadline_notification_policy_component
      - share_export_pack_component
      - search_tag_cross_filter_component
      - ai_suggestion_audit_component
    foundation_components_to_reference:
      - Checklist Execution Common
      - Export Common
      - Advisor Share Common
      - Persona and Background Display Common
    notes:
      - 相続関係者、資料整理、提出準備、監査性との相性が強い
      - app固有判断は切り離す

  EndOfLifePlanner:
    strongest_adoption_targets:
      - case_ledger_component
      - stakeholder_registry_component
      - fact_timeline_component
      - document_intake_metadata_component
      - frozen_snapshot_component
      - deadline_notification_policy_component
      - share_export_pack_component
      - search_tag_cross_filter_component
    foundation_components_to_reference:
      - Checklist Execution Common
      - Export Common
      - Persona and Background Display Common
      - Advisor Share Common
    notes:
      - 共有、提出、期限管理、整理構造との相性が強い
      - 専門判断や個別誘導文は共通化しない

  MoneyPlanner_partial_reuse:
    strongest_adoption_targets:
      - document_intake_metadata_component
      - search_tag_cross_filter_component
      - share_export_pack_component
    foundation_components_to_reference:
      - Multicurrency Display Common
      - Export Common
    notes:
      - 全面採用ではなく partial reuse 前提
      - 文書、検索、出力まわりの接続が中心

adoption_priority_summary:
  phase_1_commonization:
    - case_ledger_component
    - stakeholder_registry_component
    - fact_timeline_component
    - document_intake_metadata_component
    - frozen_snapshot_component
    - review_resolution_component

  phase_2_commonization:
    - deadline_notification_policy_component
    - share_export_pack_component
    - search_tag_cross_filter_component
    - offline_draft_conflict_component
    - ai_suggestion_audit_component

foundation_bridge_summary:
  - Document Template Common mainly bridges CareerLaunch and other document-heavy apps
  - Revision History Common mainly bridges CareerLaunch and artifact-heavy apps
  - Checklist Execution Common bridges CareerLaunch, LegalSupport, InheritanceSupport, EndOfLifePlanner
  - Status Pipeline Common is strongest in CareerLaunch first
  - Export Common and Advisor Share Common bridge multiple Life apps
