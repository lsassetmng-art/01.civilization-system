# ============================================================
# PHASE 3 SECONDARY ADOPTION REVIEW
# Life App Common
# ============================================================

status: canonical
phase: design-only

purpose:
  - secondary priority 群の採否を整理する
  - phase_1 正式採用候補との関係を明確化する
  - そのまま採用するもの、保留するもの、bridge強化で扱うものを切り分ける

review_targets:
  - deadline_notification_policy_component
  - share_export_pack_component
  - search_tag_cross_filter_component
  - offline_draft_conflict_component
  - ai_suggestion_audit_component

review_result:

  adopt_as_secondary_official_candidate:
    - deadline_notification_policy_component
    - share_export_pack_component
    - search_tag_cross_filter_component

  bridge_strengthening_only:
    - offline_draft_conflict_component
    - ai_suggestion_audit_component

review_notes:

  deadline_notification_policy_component:
    status: adopt_as_secondary_official_candidate
    reason:
      - CareerLaunch
      - LegalSupport
      - InheritanceSupport
      - EndOfLifePlanner
      で期限、再通知、見逃し防止の横断需要が強い
    common_focus:
      - deadline_at
      - notify_before_rules
      - renotify_rule
      - severity
      - overdue_flag
    keep_outside:
      - app固有の通知文面
      - 専門判断による緊急度補正

  share_export_pack_component:
    status: adopt_as_secondary_official_candidate
    reason:
      - 複数 Life app で共有、提出、秘匿化、出力形式制御の需要が強い
      - frozen_snapshot_component や Export Common と接続しやすい
    common_focus:
      - included_sections
      - redaction_level
      - export_format
      - recipient_scope
      - artifact_metadata
    keep_outside:
      - app固有の提出判断
      - 専門家向け説明文
      - 個別共有先の業務意味

  search_tag_cross_filter_component:
    status: adopt_as_secondary_official_candidate
    reason:
      - 案件、関係者、書類、メモを横断検索する需要が複数 app に存在する
      - Life app 群の整理系UIで横断価値が高い
    common_focus:
      - keyword
      - tags
      - object_type
      - related_case_filter
      - sort_rule
    keep_outside:
      - app固有ランキング
      - app固有レコメンド
      - 専門検索ロジック

  offline_draft_conflict_component:
    status: bridge_strengthening_only
    reason:
      - 重要だが、Life App 独立正本として先に持つより
        Offline Draft Queue Common / Local-first family 側との橋渡し強化が自然
    bridge_targets:
      - Offline Draft Queue Common
      - Local-first Draft / Cache / Replay Common
    keep_outside:
      - app固有の競合解決UI
      - app固有マージ判断

  ai_suggestion_audit_component:
    status: bridge_strengthening_only
    reason:
      - 将来価値は高いが、まずは review_resolution_component / frozen_snapshot_component / revision history 側との関係整理を優先したい
    bridge_targets:
      - review_resolution_component
      - frozen_snapshot_component
      - Revision History Common
    keep_outside:
      - app固有AI提案生成
      - app固有採否判断ロジック

secondary_adoption_judgment:
  - secondary candidate として先に上げるのは
    deadline_notification_policy_component
    share_export_pack_component
    search_tag_cross_filter_component
  - offline_draft_conflict_component と ai_suggestion_audit_component は
    現時点では bridge強化扱いが妥当

final_judgment:
  - phase_3 secondary review is complete
