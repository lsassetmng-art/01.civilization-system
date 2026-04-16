# ============================================================
# LIFEOS INTEGRATION RESPONSIBILITY CANONICAL
# LegalSupport
# ============================================================

status: canonical-draft
phase: design-only

integration_responsibilities:

  with_inheritance_support:
    receive:
      - heir_candidate summary
      - asset summary
      - debt summary
      - will note summary
      - inheritance task summary
    send:
      - consultation summary
      - legal follow-up memo
    boundary_rules:
      - InheritanceSupport の正本を書き換えない
      - 参照要約を受ける設計に留める
      - 相続特化判断は InheritanceSupport 側責務を尊重する

  with_end_of_life_planner:
    receive:
      - intention summary
      - emergency contact summary
      - handover intent summary
    send:
      - legal follow-up memo
      - consultation progression summary
    boundary_rules:
      - 意思情報の正本は EndOfLifePlanner 側
      - LegalSupport は相談準備文脈でのみ利用する

  with_money_planner:
    receive:
      - asset summary
      - debt summary
      - money event summary
    send:
      - legal confirmation memo
    boundary_rules:
      - 金額管理正本は MoneyPlanner 側
      - LegalSupport は法務文脈の参照利用に限定する

shared_integration_policy:
  - 明示連携のみ
  - 元アプリ正本主義
  - 参照要約受信を基本とする
  - 自動上書きはしない
  - 実データ統合ではなく責務境界を優先する

future_candidates:
  - 共通人物参照
  - 共通書類参照
  - 共通期限参照
