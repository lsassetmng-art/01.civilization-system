# ============================================================
# BOUNDARY AND HANDOFF CANONICAL
# LegalSupport
# ============================================================

status: canonical-draft
phase: design-only

handoff_matrix:

  case_overview_workspace:
    hands_off_to:
      - fact_timeline_workspace
      - stakeholder_workspace
      - legal_document_workspace
      - consultation_log_workspace
      - task_workspace
      - deadline_workspace
      - share_grant_management
    handoff_data:
      - case_id
      - confidentiality_level
      - status
      - next_action_summary

  fact_timeline_workspace:
    hands_off_to:
      - consultation_log_workspace
      - share_pack_export
    handoff_data:
      - timeline summary
      - confidence separated facts

  stakeholder_workspace:
    hands_off_to:
      - fact_timeline_workspace
      - consultation_log_workspace
      - share_pack_export
    handoff_data:
      - related stakeholder list

  legal_document_workspace:
    hands_off_to:
      - fact_timeline_workspace
      - consultation_log_workspace
      - share_grant_management
      - share_pack_export
    handoff_data:
      - document metadata
      - confidentiality level
      - reviewed status

  consultation_log_workspace:
    hands_off_to:
      - task_workspace
      - deadline_workspace
      - share_pack_export
    handoff_data:
      - unresolved_points
      - next_steps
      - consultation summary

  task_workspace:
    hands_off_to:
      - home_dashboard
      - deadline_workspace
    handoff_data:
      - open tasks
      - due related tasks

  share_grant_management:
    hands_off_to:
      - share_pack_export
    handoff_data:
      - included_sections
      - redaction_level
      - exclude_sensitive_items

handoff_rules:
  - handoff は case_id 基点
  - handoff 後も元コンポーネント正本責務は移らない
  - 高秘匿情報は handoff 時点で除外されうる
