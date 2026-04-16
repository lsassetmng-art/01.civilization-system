# ============================================================
# NEXT PHASE RECOMMENDATION
# LegalSupport
# ============================================================

status: canonical-draft
phase: design-only
schema_name: life

current_position:
  - 実装前の設計整理はかなり進んでいる
  - ただし implementation は未着手
  - model / infrastructure の一部は参考設計扱い

recommended_next_phases_without_implementation:

  phase_a:
    name: unresolved_issue_resolution
    goal:
      - security / share / confidentiality の未決を先に絞る
    target_docs:
      - 9000009_OPEN_ISSUE_LEDGER.md
      - 1000102_SECURITY_RULE_CANONICAL.md
      - 0700102_OPERATION_RULE_CANONICAL.md

  phase_b:
    name: screen_and_rule_consistency_review
    goal:
      - 画面項目と業務ルールの矛盾を最終点検する
    target_docs:
      - 0900102_SCREEN_DETAIL_CANONICAL.md
      - 0800102_BUSINESS_RULE_CANONICAL.md
      - 0200107_INTERFACE_ALIGNMENT_CANONICAL.md

  phase_c:
    name: common_component_readiness_review
    goal:
      - 何を共通部品候補台帳へ正式提案するか整理する
    target_docs:
      - 0600201_COMMON_COMPONENT_CANDIDATE_CANONICAL.md
      - 014_APPLICATION_COMMON_COMPONENT_OFFICIAL_LEDGER.md reference

  phase_d:
    name: implementation_handoff_preparation
    goal:
      - 実装未着手のまま、将来の handoff 説明資料だけ作る
    target_docs:
      - app overview
      - reading order
      - coverage audit
      - open issue ledger

not_recommended_yet:
  - DDL finalization
  - SQL execution
  - psql execution
  - API implementation
  - client coding

recommendation_summary:
  - まずは未決事項のうち security / share 系をまとめて決めるのが最も効果的
  - その後、共通部品候補の正式切り出しに進むと設計が閉じやすい
