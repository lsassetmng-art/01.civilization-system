# ============================================================
# SYSTEM COMPOSITION CANONICAL
# LegalSupport
# ============================================================

status: canonical-draft
phase: design-only

system_composition:

  user_entry_zone:
    purpose:
      - 利用開始時の導線を単純にする
    components:
      - home_dashboard
      - case_list
      - case_create

  case_management_zone:
    purpose:
      - 案件を中心に全情報を束ねる
    components:
      - case_overview_workspace
      - case_status_management
      - archive_control

  fact_organization_zone:
    purpose:
      - 事実、時系列、関係者の整理
    components:
      - fact_timeline_workspace
      - stakeholder_workspace
      - confidence_separation_view

  document_organization_zone:
    purpose:
      - 書類と証拠の整理
    components:
      - legal_document_workspace
      - evidence_workspace
      - confidentiality_classification_view

  consultation_support_zone:
    purpose:
      - 相談前後の整理を支援
    components:
      - consultation_log_workspace
      - unresolved_point_workspace
      - next_step_workspace

  operational_followup_zone:
    purpose:
      - 相談後の継続運用を支える
    components:
      - task_workspace
      - deadline_workspace

  sharing_and_output_zone:
    purpose:
      - 家族共有と持参資料出力
    components:
      - share_grant_management
      - share_scope_control
      - share_pack_export

  cross_app_reference_zone:
    purpose:
      - LifeOS 他アプリの要約参照
    components:
      - inheritance_support_reference
      - end_of_life_reference
      - money_planner_reference

composition_policy:
  - entry は単純
  - center は case
  - confidential item は share zone の外で先に分類
  - integration は reference 中心
