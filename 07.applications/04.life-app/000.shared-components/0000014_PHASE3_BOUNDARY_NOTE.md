# ============================================================
# PHASE 3 BOUNDARY NOTE
# Life App Common
# ============================================================

status: canonical
phase: design-only

purpose:
  - phase_3 secondary official candidate 3件の共通責務境界を固定する
  - phase_1骨格と衝突しないように分離ルールを明文化する
  - 過剰共通化を防ぐ

phase_3_target_components:
  - deadline_notification_policy_component
  - share_export_pack_component
  - search_tag_cross_filter_component

boundary_rules_common:
  - secondary candidate は phase_1 骨格を補強する位置づけとする
  - 専門判断ロジックは共通化しない
  - app固有表示文言は共通化しない
  - app固有の優先順位補正は共通化しない
  - foundation common と重なる場合は bridge で整理する
  - UI見た目より contract / state / filter / policy を優先する

component_boundaries:

  deadline_notification_policy_component:
    common_inside:
      - deadline_at
      - notify_before_rules
      - renotify_rule
      - severity
      - overdue_flag
    keep_outside:
      - app固有通知文面
      - 法律/医療/転職などの専門判断に基づく緊急度補正
      - app固有チャネル選択ルール
      - app固有の通知停止例外
    separation_note:
      - 通知 policy 骨格は共通化する
      - ただし通知内容そのものや個別判断は各app責務とする

  share_export_pack_component:
    common_inside:
      - included_sections
      - redaction_level
      - export_format
      - recipient_scope
      - artifact_metadata
    keep_outside:
      - app固有の提出判断
      - app固有の送付先意味
      - 専門家向け説明文
      - 個別案件ごとの共有妥当性判断
    separation_note:
      - 共有/出力パックの構造は共通化する
      - ただし「誰に何を出すべきか」の判断は各app責務とする

  search_tag_cross_filter_component:
    common_inside:
      - keyword
      - tags
      - object_type
      - related_case_filter
      - sort_rule
    keep_outside:
      - app固有ランキング
      - app固有レコメンド
      - 専門検索ロジック
      - app固有の検索結果説明文
    separation_note:
      - 横断 filter / tag / keyword contract は共通化する
      - ただし結果評価やレコメンドは各app責務とする

cross_component_boundary_note:
  - deadline_notification_policy_component は case_ledger_component の next_action を補強するが、案件意味そのものは持たない
  - share_export_pack_component は frozen_snapshot_component と Export Common を補強するが、snapshot 固定や export job 自体は持たない
  - search_tag_cross_filter_component は case / stakeholder / document / timeline を横断するが、それぞれの主データ意味は奪わない

anti_duplication_rules:
  - deadline_notification_policy_component は Reminder / Due / Follow-up Common と競合させず、Life App 文脈の policy 側に寄せる
  - share_export_pack_component は Export Common と競合させず、pack 構造と redaction / recipient scope 側に寄せる
  - search_tag_cross_filter_component は検索UIそのものではなく、横断 filter contract 側に寄せる

final_boundary_judgment:
  - 3件とも secondary official candidate として維持可能
  - ただし共通化するのは policy / pack / filter の骨格までとする
