# ============================================================
# INTERFACE ALIGNMENT CANONICAL
# LegalSupport
# ============================================================

status: canonical-draft
phase: design-only

alignment_points:

  home_dashboard:
    architecture_component:
      - user_entry_zone
    interface_screen:
      - home_dashboard
    alignment_note:
      - 入口画面として全体状況要約に徹する

  case_list:
    architecture_component:
      - user_entry_zone
      - case_management_zone
    interface_screen:
      - case_list
    alignment_note:
      - 一覧管理と案件遷移に専念する

  case_detail:
    architecture_component:
      - case_management_zone
    interface_screen:
      - case_detail
    alignment_note:
      - case を中心に各 workspace へ遷移する中心画面

  fact_timeline:
    architecture_component:
      - fact_organization_zone
    interface_screen:
      - fact_timeline
    alignment_note:
      - 事実と確度の整理責務に一致する

  stakeholder_list:
    architecture_component:
      - fact_organization_zone
    interface_screen:
      - stakeholder_list
    alignment_note:
      - 関係者整理責務に一致する

  document_list:
    architecture_component:
      - document_organization_zone
    interface_screen:
      - document_list
    alignment_note:
      - 書類 metadata と秘匿区分整理に一致する

  consultation_log:
    architecture_component:
      - consultation_support_zone
    interface_screen:
      - consultation_log
    alignment_note:
      - 面談記録と次対応整理に一致する

  task_board:
    architecture_component:
      - operational_followup_zone
    interface_screen:
      - task_board
    alignment_note:
      - 継続運用責務に一致する

  deadline_board:
    architecture_component:
      - operational_followup_zone
    interface_screen:
      - deadline_board
    alignment_note:
      - 期限管理責務に一致する

  share_setting:
    architecture_component:
      - sharing_and_output_zone
    interface_screen:
      - share_setting
    alignment_note:
      - 共有設定と出力境界に一致する

consistency_summary:
  - architecture の zone 分割と interface の screen 分割は整合している
  - case_detail が中心ハブになる構造は維持されている
  - sharing と export は document/workspace から独立させている
