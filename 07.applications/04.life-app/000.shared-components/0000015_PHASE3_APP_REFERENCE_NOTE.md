# ============================================================
# PHASE 3 APP REFERENCE NOTE
# Life App Common
# ============================================================

status: canonical
phase: design-only

purpose:
  - phase_3 secondary official candidate 3件を各 Life app がどう参照するかを固定する
  - phase_1 骨格との接続順を明確化する
  - secondary candidate の採用強度を app ごとに整理する

phase_3_target_components:
  - deadline_notification_policy_component
  - share_export_pack_component
  - search_tag_cross_filter_component

app_reference_note:

  CareerLaunch:
    strongest_reference_components:
      - deadline_notification_policy_component
      - search_tag_cross_filter_component
    secondary_reference_components:
      - share_export_pack_component
    reference_reason:
      - 応募締切
      - 面接準備期限
      - 提出前リマインド
      - 案件 / 書類 / メモ横断検索
      - 提出版共有の補助
    bridge_priority:
      - deadline_notification_policy_component -> case_ledger_component / Status Pipeline Common
      - search_tag_cross_filter_component -> case_ledger_component / document_intake_metadata_component
      - share_export_pack_component -> frozen_snapshot_component / Export Common

  LegalSupport:
    strongest_reference_components:
      - deadline_notification_policy_component
      - share_export_pack_component
      - search_tag_cross_filter_component
    reference_reason:
      - 相談期限 / 提出期限 / 再通知
      - 共有提出パック
      - 証拠 / 関係者 / 書類 / メモ横断検索
    bridge_priority:
      - deadline_notification_policy_component -> fact_timeline_component
      - share_export_pack_component -> frozen_snapshot_component / Advisor Share Common
      - search_tag_cross_filter_component -> stakeholder_registry_component / document_intake_metadata_component

  InheritanceSupport:
    strongest_reference_components:
      - deadline_notification_policy_component
      - share_export_pack_component
      - search_tag_cross_filter_component
    reference_reason:
      - 手続き期限
      - 提出パック整理
      - 相続関係者 / 書類 / 案件横断検索
    bridge_priority:
      - deadline_notification_policy_component -> case_ledger_component / fact_timeline_component
      - share_export_pack_component -> frozen_snapshot_component / Export Common
      - search_tag_cross_filter_component -> stakeholder_registry_component / document_intake_metadata_component

  EndOfLifePlanner:
    strongest_reference_components:
      - deadline_notification_policy_component
      - share_export_pack_component
      - search_tag_cross_filter_component
    reference_reason:
      - 準備期限
      - 家族共有 / 出力パック
      - 文書 / 関係者 / 準備項目横断検索
    bridge_priority:
      - deadline_notification_policy_component -> Checklist Execution Common
      - share_export_pack_component -> frozen_snapshot_component / Advisor Share Common
      - search_tag_cross_filter_component -> case_ledger_component / stakeholder_registry_component

  MoneyPlanner_partial_reuse:
    strongest_reference_components:
      - search_tag_cross_filter_component
    secondary_reference_components:
      - share_export_pack_component
    reference_reason:
      - 書類横断検索
      - 出力整理の一部
    bridge_priority:
      - search_tag_cross_filter_component -> document_intake_metadata_component
      - share_export_pack_component -> Export Common
    adoption_note:
      - partial reuse 前提
      - deadline_notification_policy_component は現時点では優先度低め

adoption_strength_summary:
  strongest_cross_app_secondary:
    - deadline_notification_policy_component
    - share_export_pack_component
    - search_tag_cross_filter_component

  strongest_by_app:
    CareerLaunch:
      - deadline_notification_policy_component
      - search_tag_cross_filter_component
    LegalSupport:
      - deadline_notification_policy_component
      - share_export_pack_component
      - search_tag_cross_filter_component
    InheritanceSupport:
      - deadline_notification_policy_component
      - share_export_pack_component
      - search_tag_cross_filter_component
    EndOfLifePlanner:
      - deadline_notification_policy_component
      - share_export_pack_component
      - search_tag_cross_filter_component

reference_judgment:
  - LegalSupport / InheritanceSupport / EndOfLifePlanner では3件フル参照が自然
  - CareerLaunch は deadline + search を主軸、share_export_pack は準採用が自然
  - MoneyPlanner は search 中心の partial reuse が自然
