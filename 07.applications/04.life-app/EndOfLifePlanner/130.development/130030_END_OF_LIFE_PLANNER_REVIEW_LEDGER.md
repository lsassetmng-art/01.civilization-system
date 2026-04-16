# ============================================================
# END OF LIFE PLANNER REVIEW LEDGER
# ============================================================

status: canonical-draft
phase: L8-review-ledger-preparation
app: EndOfLifePlanner
owner: Boss
prepared_by: Zero

document_purpose:
  - EndOfLifePlanner の設計レビュー対象を一覧化する
  - 何がレビュー済みで、何が未レビューかを可視化する
  - 実装開始前の確認順序を固定する
  - design-only のまま進める

review_status_scale:
  - not_started
  - in_review
  - reviewed
  - fixed_after_review
  - deferred

review_units:

  - review_id: EOL-RV-001
    topic: positioning_and_service_boundary
    layer:
      - 010.constitution
      - 080.policy
    current_status: reviewed
    review_focus:
      - 終活整理支援アプリとしての境界
      - non-medical / non-legal / non-tax
      - AIサポート境界
    notes:
      - 基本方針は固定済み

  - review_id: EOL-RV-002
    topic: pricing_and_support_boundary
    layer:
      - 010.constitution
    current_status: reviewed
    review_focus:
      - free / family / family_plus
      - AIチャットのみ
      - 人間サポート非含有
    notes:
      - 料金境界は固定済み

  - review_id: EOL-RV-003
    topic: screen_inventory_and_transition
    layer:
      - 090.interface
      - 050.flow
    current_status: reviewed
    review_focus:
      - 画面一覧
      - 画面遷移
      - role別表示差分
    notes:
      - 形式上は固定済み
      - 文言微調整余地あり

  - review_id: EOL-RV-004
    topic: formal_screen_specification
    layer:
      - 090.interface
    current_status: in_review
    review_focus:
      - 必須項目
      - 任意項目
      - visible_for / editable_for
      - validation
      - disclaimer表示位置
    notes:
      - 最終文言レビューが残る

  - review_id: EOL-RV-005
    topic: role_permission_matrix
    layer:
      - 020.architecture
      - 100.security
    current_status: reviewed
    review_focus:
      - owner / family_viewer / delegated_editor
      - 共有設定権限
      - 監査閲覧権限
      - export境界
    notes:
      - 大枠固定済み
      - DB表現方法は未最終

  - review_id: EOL-RV-006
    topic: request_response_exact_payload
    layer:
      - 120.implementation
    current_status: reviewed
    review_focus:
      - endpoint責務
      - request context
      - response context
      - warning / error family
    notes:
      - naming final review は残る

  - review_id: EOL-RV-007
    topic: formal_api_specification
    layer:
      - 120.implementation
    current_status: in_review
    review_focus:
      - endpoint grouping
      - actor role boundary
      - warning / error catalog
      - response shape粒度
    notes:
      - endpoint名と response shape の最終磨き込みが残る

  - review_id: EOL-RV-008
    topic: data_entities_exact
    layer:
      - 030.model
    current_status: reviewed
    review_focus:
      - entity責務
      - field責務
      - lifecycle
      - sensitivity
    notes:
      - exact定義は概ね固定済み

  - review_id: EOL-RV-009
    topic: pre_implementation_db_design
    layer:
      - 110.infrastructure
    current_status: reviewed
    review_focus:
      - table responsibility
      - key policy
      - lifecycle
      - audit
      - versioning
    notes:
      - SQLなし論理設計としては十分

  - review_id: EOL-RV-010
    topic: physical_db_design_without_sql
    layer:
      - 110.infrastructure
    current_status: in_review
    review_focus:
      - life schema 前提
      - eol_ prefix
      - physical important columns
      - constraint direction
      - index direction
    notes:
      - 添付分離、shared categories 表現など未確定あり

  - review_id: EOL-RV-011
    topic: common_component_official_review_block
    layer:
      - 920.meta
    current_status: reviewed
    review_focus:
      - 共通部品候補妥当性
      - アプリ固有責務の切り分け
    notes:
      - 持ち込み候補は整理済み

  - review_id: EOL-RV-012
    topic: implementation_readiness_judgment
    layer:
      - 130.development
    current_status: reviewed
    review_focus:
      - HOLD妥当性
      - GO条件
      - 未確定事項
    notes:
      - current judgment は HOLD 固定

review_order_recommendation:
  - formal_screen_specification
  - formal_api_specification
  - physical_db_design_without_sql
  - implementation_readiness_judgment_recheck

gate_rule:
  before_implementation:
    required_all_reviewed:
      - EOL-RV-004
      - EOL-RV-007
      - EOL-RV-010
    required_status:
      - fixed_after_review or reviewed
    current_gate_state:
      - blocked
