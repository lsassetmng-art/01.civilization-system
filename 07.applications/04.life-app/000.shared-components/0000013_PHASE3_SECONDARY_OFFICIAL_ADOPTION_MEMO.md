# ============================================================
# PHASE 3 SECONDARY OFFICIAL ADOPTION MEMO
# Life App Common
# ============================================================

status: canonical
phase: design-only

purpose:
  - phase_3 secondary official candidate 3件を正式採用候補として固定する
  - phase_1 最優先6件との関係を整理する
  - 後続の boundary note / app reference 更新の基礎にする

phase_3_secondary_official_adoption_targets:

  deadline_notification_policy_component:
    adoption_status: adopted_as_secondary_official_candidate
    name_ja: 期限 / 通知ポリシー共通
    why_adopt_now:
      - CareerLaunch
      - LegalSupport
      - InheritanceSupport
      - EndOfLifePlanner
      で期限、再通知、見逃し防止の横断需要が強い
    common_contract_focus:
      - deadline_at
      - notify_before_rules
      - renotify_rule
      - severity
      - overdue_flag
    keep_app_specific_outside:
      - app固有通知文面
      - 専門判断による緊急度補正
      - app固有の通知チャネル優先度
    bridge_targets:
      - Reminder / Due / Follow-up Common
      - case_ledger_component
      - fact_timeline_component

  share_export_pack_component:
    adoption_status: adopted_as_secondary_official_candidate
    name_ja: Share / Export パック共通
    why_adopt_now:
      - LegalSupport
      - InheritanceSupport
      - EndOfLifePlanner
      - CareerLaunch
      で共有、提出、秘匿化、形式切替の需要が強い
    common_contract_focus:
      - included_sections
      - redaction_level
      - export_format
      - recipient_scope
      - artifact_metadata
    keep_app_specific_outside:
      - app固有の提出判断
      - 専門家向け説明文
      - 個別共有先の業務意味
    bridge_targets:
      - frozen_snapshot_component
      - Export Common
      - Advisor Share Common

  search_tag_cross_filter_component:
    adoption_status: adopted_as_secondary_official_candidate
    name_ja: 検索 / タグ / 横断フィルタ共通
    why_adopt_now:
      - 案件、関係者、書類、メモを横断検索する需要が複数 app に存在する
      - Life app 群の整理系UIで横断価値が高い
    common_contract_focus:
      - keyword
      - tags
      - object_type
      - related_case_filter
      - sort_rule
    keep_app_specific_outside:
      - app固有ランキング
      - app固有レコメンド
      - 専門検索ロジック
    bridge_targets:
      - case_ledger_component
      - stakeholder_registry_component
      - document_intake_metadata_component
      - fact_timeline_component

secondary_boundary_rules:
  - secondary candidate は phase_1 骨格を補強する位置づけとする
  - 専門判断ロジックは共通化しない
  - app固有表示文言は共通化しない
  - foundation common と重なる場合は bridge で整理する
  - search は検索UIではなく検索 contract / filter 構造を優先する

secondary_adoption_conclusion:
  - 3件とも secondary official candidate として採用してよい
  - 次段では boundary note と app reference 更新へ進む
