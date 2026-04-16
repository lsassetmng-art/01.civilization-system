# ============================================================
# MONEY PLANNER INTEGRATED CANONICAL
# LifeOS / 人生設計領域
# ============================================================

status: canonical-integrated
system: MoneyPlanner
domain: LifeOS
prepared_by: Zero
owner: Boss
implementation_status:
  - design_complete
  - implementation_not_started

# ============================================================
# 01. POSITIONING
# ============================================================

app_name:
  en: MoneyPlanner
  ja: お金計画アプリ

positioning:
  - 家計簿ではなく、中長期の資金計画に強いアプリ
  - 人生設計と結びついたお金管理
  - 個人、夫婦、家族単位で将来資金計画を整理する LifeOS アプリ
  - 住宅、教育、老後、終活、相続準備の入口まで見据えた資金整理アプリ

core_purpose:
  - 収入/支出/資産/負債の整理
  - 目的別貯蓄
  - 住宅、教育、老後などの計画
  - 資金不足リスクの見える化
  - 家族単位での将来資金計画の共有

main_users:
  - 個人
  - 夫婦
  - 家族単位

primary_value_proposition:
  - 将来必要なお金を見える化できる
  - 家族で同じ資金計画を共有できる
  - ライフイベントとお金をつなげて考えられる
  - 終活・相続準備の入口としても使える
  - 多通貨・多言語・マルチデバイス前提で長く使える

# ============================================================
# 02. PLATFORM / PRICING
# ============================================================

multilingual:
  required: true

multicurrency:
  required: true
  scope:
    - すべての金額項目
    - 複数通貨資産
    - 為替換算表示
    - 基準通貨表示
    - 通貨別内訳表示

multi_device:
  iphone: true
  android: true
  pc: true
  tablet: true

pricing_design:
  plans:
    free:
      price_jpy_monthly: 0
      included:
        - 収入管理
        - 支出管理
        - 資産一覧
        - 負債一覧
        - 貯蓄目標
        - イベント費用計画
        - 月次/年次見通し
        - メモ
        - 基本カテゴリ分析
        - 単一シナリオ
        - 多言語対応
        - 多通貨対応
      limitations:
        - 家族共有なし
        - 複数シナリオ比較なし
        - 手動共有なし
        - 高度警告なし

    plus_family:
      price_jpy_monthly: 500
      included:
        - Free 全機能
        - 家族共有
        - 共同編集
        - 複数シナリオ比較
        - 資金不足警告
        - LifePlanner 連携強化
        - EndOfLifePlanner 向け資産概要共有
        - InheritanceSupport 向け資産概要共有
      limitations:
        - 投資助言なし
        - 税務判断なし
        - 法務判断なし
        - サポートは AIチャットのみ

support_policy:
  - AIチャットのみ
  - 人間サポートなし

# ============================================================
# 03. BOUNDARY
# ============================================================

lifeos_boundaries:
  allowed:
    - ライフイベント費用計画との連携
    - 相続準備向け資産概要共有
    - 人生設計計画との見通し共有
  prohibited:
    - 投資助言の確定提供
    - 税務判断の確定提供
    - 法務判断の確定提供
    - 保険商品の勧誘
    - 自動的な資産移転判断

non_goals:
  - 完全な会計ソフト化
  - 税申告作成
  - 自動投資判断
  - 相続手続そのものの実行

schema_policy:
  schema_name: life
  decision: fixed
  note:
    - app 専用 schema は使わない
    - MoneyPlanner 固有データは life schema 内で mp_ prefix で分離する

# ============================================================
# 04. ROLE / SHARING
# ============================================================

roles:
  owner:
    - 全件閲覧
    - 全件編集
    - 共有設定
    - 手動共有実行
    - 候補 confirm / reject / archive
  partner_editor:
    - shared 範囲内の閲覧
    - shared 範囲内の編集
    - 候補 read limited
  viewer:
    - shared 範囲内の閲覧のみ

visibility_scope:
  object_visibility:
    - private
    - shared
    - selected_only

member_visibility_scope:
  values:
    - all
    - shared_only
    - selected_only

family_sharing_rules:
  - owner は全件閲覧可能
  - partner_editor は shared / selected_only(対象時) のみ閲覧可能
  - viewer は shared / selected_only(対象時) のみ閲覧可能
  - private は owner 専用
  - selected_only は owner が個別指定した相手だけ閲覧可能
  - manual share は owner のみ

# ============================================================
# 05. CORE FUNCTIONS
# ============================================================

must_functions:
  - 収入管理
  - 支出管理
  - 資産一覧
  - 負債一覧
  - 貯蓄目標
  - イベント費用計画
  - 月次/年次見通し
  - メモ

should_functions:
  - 予算管理
  - カテゴリ別分析
  - ライフイベント連携
  - 資金不足警告
  - 保険/年金メモ
  - 家族共有

nice_to_have:
  - 口座連携
  - 投資資産メモ
  - 税金概算メモ
  - 複数シナリオ比較

# ============================================================
# 06. SCREEN CATALOG
# ============================================================

screens:
  - MP-001 dashboard
  - MP-002 income_list
  - MP-003 expense_list
  - MP-004 asset_list
  - MP-005 liability_list
  - MP-006 saving_goal_list
  - MP-007 event_budget_list
  - MP-008 monthly_projection
  - MP-009 yearly_projection
  - MP-010 scenario_compare
  - MP-011 family_sharing
  - MP-012 memo_list
  - MP-013 alerts
  - MP-014 linkage_settings
  - MP-015 receive_candidate_review

dashboard_widgets:
  - total_income
  - total_expense
  - total_assets
  - total_liabilities
  - net_worth
  - active_goal_count
  - total_target_amount
  - total_current_saved_amount
  - upcoming_count
  - total_upcoming_amount
  - received_candidate_count
  - duplicate_candidate_count

# ============================================================
# 07. DOMAIN MODEL
# ============================================================

core_entities:
  - mp_plan
  - mp_income_item
  - mp_expense_item
  - mp_asset_item
  - mp_liability_item
  - mp_saving_goal
  - mp_event_budget
  - mp_scenario
  - mp_shared_member
  - mp_memo_item
  - mp_financial_snapshot
  - mp_receive_candidate_registry
  - mp_audit_event
  - mp_change_log
  - mp_history_snapshot

entity_purpose:
  mp_plan:
    - MoneyPlanner の計画ルート
  mp_income_item:
    - 収入項目
  mp_expense_item:
    - 支出項目
  mp_asset_item:
    - 資産台帳
  mp_liability_item:
    - 負債台帳
  mp_saving_goal:
    - 目標積立
  mp_event_budget:
    - ライフイベント費用
  mp_scenario:
    - 比較シナリオ
  mp_shared_member:
    - 共有メンバー
  mp_memo_item:
    - 補足メモ
  mp_financial_snapshot:
    - 時点スナップショット
  mp_receive_candidate_registry:
    - 受入候補原本管理
  mp_audit_event:
    - 重要操作監査
  mp_change_log:
    - 項目変更履歴
  mp_history_snapshot:
    - 月次/年次履歴

# ============================================================
# 08. LOGICAL VIEW
# ============================================================

logical_views:
  - life.v_mp_plan_balance_summary
  - life.v_mp_goal_progress_summary
  - life.v_mp_upcoming_event_budget_summary
  - life.v_mp_receive_candidate_summary
  - life.v_mp_shared_balance_summary
  - life.v_mp_member_visible_object_summary
  - life.v_mp_dashboard_composed_summary

summary_rules:
  - owner summary は private/shared/selected_only を含みうる
  - shared summary は shared のみ
  - member summary は member_visibility_scope を適用
  - receive candidate summary は archived を通常件数から除外してよい

# ============================================================
# 09. RECEIVE CANDIDATE
# ============================================================

receive_sources:
  - LifePlanner
  - EndOfLifePlanner
  - InheritanceSupport

receive_policy:
  - 明示受入のみ
  - 自動確定しない
  - candidate / draft 化を基本とする
  - owner review 必須
  - duplicate 時は reviewed 経由必須

receive_candidate_status:
  - received
  - draft_candidate
  - reviewed
  - confirmed
  - rejected
  - archived

candidate_type:
  - event_budget
  - saving_goal
  - memo
  - asset
  - liability

duplicate_policy:
  - 完全一致でも自動上書きしない
  - duplicate_candidate_flag を立てる
  - owner が既存採用 / candidate採用 / archive 候補化を判断する

# ============================================================
# 10. API DESIGN
# ============================================================

major_api_groups:
  - dashboard
  - incomes
  - expenses
  - assets
  - liabilities
  - saving_goals
  - event_budgets
  - projections.monthly
  - projections.yearly
  - scenarios
  - scenarios.compare
  - sharing.members
  - memos
  - alerts
  - linkages
  - linkages.share
  - receive-candidates
  - receive-candidates.status
  - receive-candidates.visibility
  - receive-candidates.duplicate-reference

api_policy:
  - JSON request / response 固定
  - id は uuid string
  - amount は decimal string
  - response は fixed key を基本
  - nullable は null を返す
  - required / nullable matrix は別 canonical で固定済み

dashboard_api:
  endpoint: GET /v1/money-planner/dashboard
  summary_scope:
    - owner
    - shared

family_sharing_api:
  - GET /v1/money-planner/sharing/members
  - POST /v1/money-planner/sharing/members
  - PATCH /v1/money-planner/sharing/members/{shared_member_id}
  - DELETE /v1/money-planner/sharing/members/{shared_member_id}
  - GET /v1/money-planner/sharing/members/{shared_member_id}/visible-summary

linkage_api:
  - GET /v1/money-planner/linkages
  - PATCH /v1/money-planner/linkages/{target_system}
  - POST /v1/money-planner/linkages/share

receive_candidate_api:
  - GET /v1/money-planner/receive-candidates
  - GET /v1/money-planner/receive-candidates/{candidate_registry_id}
  - PATCH /v1/money-planner/receive-candidates/{candidate_registry_id}/status
  - PATCH /v1/money-planner/receive-candidates/{candidate_registry_id}/visibility
  - GET /v1/money-planner/receive-candidates/{candidate_registry_id}/duplicate-reference

# ============================================================
# 11. SCREEN TO API BINDING
# ============================================================

screen_to_api:
  dashboard:
    - GET /v1/money-planner/dashboard
    - GET /v1/money-planner/alerts

  income_list:
    - GET /v1/money-planner/incomes
    - POST /v1/money-planner/incomes
    - PATCH /v1/money-planner/incomes/{income_id}
    - DELETE /v1/money-planner/incomes/{income_id}

  expense_list:
    - GET /v1/money-planner/expenses
    - POST /v1/money-planner/expenses
    - PATCH /v1/money-planner/expenses/{expense_id}
    - DELETE /v1/money-planner/expenses/{expense_id}

  asset_list:
    - GET /v1/money-planner/assets
    - POST /v1/money-planner/assets
    - PATCH /v1/money-planner/assets/{asset_id}
    - DELETE /v1/money-planner/assets/{asset_id}

  liability_list:
    - GET /v1/money-planner/liabilities
    - POST /v1/money-planner/liabilities
    - PATCH /v1/money-planner/liabilities/{liability_id}
    - DELETE /v1/money-planner/liabilities/{liability_id}

  saving_goal_list:
    - GET /v1/money-planner/saving-goals
    - POST /v1/money-planner/saving-goals
    - PATCH /v1/money-planner/saving-goals/{goal_id}
    - DELETE /v1/money-planner/saving-goals/{goal_id}

  event_budget_list:
    - GET /v1/money-planner/event-budgets
    - POST /v1/money-planner/event-budgets
    - PATCH /v1/money-planner/event-budgets/{event_budget_id}
    - DELETE /v1/money-planner/event-budgets/{event_budget_id}

  scenario_compare:
    - GET /v1/money-planner/scenarios
    - POST /v1/money-planner/scenarios
    - POST /v1/money-planner/scenarios/compare

  family_sharing:
    - GET /v1/money-planner/sharing/members
    - POST /v1/money-planner/sharing/members
    - PATCH /v1/money-planner/sharing/members/{shared_member_id}
    - DELETE /v1/money-planner/sharing/members/{shared_member_id}

  linkage_settings:
    - GET /v1/money-planner/linkages
    - PATCH /v1/money-planner/linkages/{target_system}
    - POST /v1/money-planner/linkages/share

  receive_candidate_review:
    - GET /v1/money-planner/receive-candidates
    - GET /v1/money-planner/receive-candidates/{candidate_registry_id}
    - PATCH /v1/money-planner/receive-candidates/{candidate_registry_id}/status
    - PATCH /v1/money-planner/receive-candidates/{candidate_registry_id}/visibility
    - GET /v1/money-planner/receive-candidates/{candidate_registry_id}/duplicate-reference

# ============================================================
# 12. VALIDATION / ENUM / TERMINOLOGY
# ============================================================

validation_policy:
  - UI で先に入力不備を防ぐ
  - API validation と矛盾しない
  - amount は decimal 前提
  - currency_code は 3文字
  - date は yyyy-mm-dd
  - month は yyyy-mm

cross_domain_enum:
  frequency:
    - daily
    - weekly
    - monthly
    - yearly
    - one_time
  necessity_level:
    - essential
    - normal
    - optional
  asset_type:
    - cash
    - bank_deposit
    - securities
    - insurance
    - real_estate
    - other
  liability_type:
    - mortgage
    - loan
    - credit_card
    - other
  ownership_scope:
    - individual
    - couple
    - family
  visibility_scope:
    - private
    - shared
    - selected_only
  shared_member_role:
    - owner
    - partner_editor
    - viewer
  import_status:
    - received
    - draft_candidate
    - reviewed
    - confirmed
    - rejected
    - archived
  alert_type:
    - shortage_risk
    - duplicate_candidate
    - review_pending
    - goal_delay
    - sharing_visibility_warning

terminology:
  plan:
    ja: 計画
  saving_goal:
    ja: 貯蓄目標
  event_budget:
    ja: イベント費用計画
  receive_candidate:
    ja: 受入候補
  duplicate_candidate:
    ja: 重複候補
  owner_summary:
    ja: owner summary
  shared_summary:
    ja: shared summary
  manual_share:
    ja: 手動共有

# ============================================================
# 13. ERROR / ALERT
# ============================================================

api_error_families:
  - validation
  - auth
  - permission
  - not_found
  - conflict
  - business_rule
  - server

screen_error_policy:
  - field_error
  - form_error
  - global_error

alert_types:
  - shortage_risk
  - duplicate_candidate
  - review_pending
  - goal_delay
  - sharing_visibility_warning

# ============================================================
# 14. AUDIT / HISTORY / REVIEW OPERATION
# ============================================================

audit_objects:
  - life.mp_audit_event
  - life.mp_change_log
  - life.mp_history_snapshot

audit_policy:
  - create/update/share/confirm/reject を audit 対象
  - 金額変更は change_log 対象
  - monthly / yearly review 完了時に history_snapshot 候補を残す

monthly_review:
  - dashboard summary 確認
  - monthly projection 確認
  - income / expense 更新確認
  - asset / liability 更新確認
  - goal / event 見直し
  - receive candidate review
  - monthly checkpoint 保存

yearly_review:
  - yearly projection 確認
  - scenario compare 確認
  - LifePlanner 連携イベント見直し
  - EndOfLifePlanner / InheritanceSupport 候補見直し
  - family sharing visibility 見直し
  - yearly checkpoint 保存

# ============================================================
# 15. COMMON COMPONENT DECISION
# ============================================================

adopt_now:
  - 資産負債台帳共通部品
  - カテゴリ別分析共通部品
  - 共同家計編集共通部品
  - 目標積立共通部品
  - ライフイベント費用計画共通部品
  - 受入候補レビュー共通部品
  - 手動共有共通部品

adopt_later:
  - 口座連携共通部品
  - 税金概算支援共通部品
  - 投資資産詳細分析共通部品

rejected_now:
  - 自動最適化提案エンジン

# ============================================================
# 16. IMPLEMENTATION READINESS
# ============================================================

implementation_readiness:
  ready: true
  blockers: []

ready_items:
  - positioning fixed
  - pricing fixed
  - screen catalog fixed
  - screen validation fixed
  - role / sharing fixed
  - linkage send / receive fixed
  - logical table fixed
  - logical view fixed
  - api exact payload fixed
  - required / nullable fixed
  - screen-to-api binding fixed
  - enum / terminology fixed
  - audit / history fixed
  - review flow fixed
  - test / acceptance design fixed
  - implementation entry sequence fixed

not_done_by_design:
  - physical SQL not created
  - implementation code not started
  - visual polish not started

final_state:
  - design_complete
  - implementation_ready
  - implementation_not_started
