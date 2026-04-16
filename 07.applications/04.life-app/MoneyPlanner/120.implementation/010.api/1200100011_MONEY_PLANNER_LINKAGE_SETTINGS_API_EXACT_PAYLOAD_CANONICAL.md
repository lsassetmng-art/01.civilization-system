# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# MONEY PLANNER LINKAGE SETTINGS API EXACT PAYLOAD CANONICAL
# ============================================================

status: canonical-draft
system: MoneyPlanner
layer: 120.implementation
subdomain: api

purpose:
  - linkage settings 画面の exact payload を固定する
  - LifePlanner / EndOfLifePlanner / InheritanceSupport 連携状態を扱う
  - 手動共有実行前の設定状態を正本化する

api_group:
  - get_linkages
  - update_linkage_setting
  - manual_share

get_linkages:
  method: GET
  path: /v1/money-planner/linkages
  response_200:
    success: true
    data:
      life_planner:
        enabled: true
        share_scope: "financial_plan_summary"
        last_shared_at: "2026-04-14T20:00:00+09:00"
      end_of_life_planner:
        enabled: false
        share_scope: "none"
        last_shared_at: null
      inheritance_support:
        enabled: false
        share_scope: "none"
        last_shared_at: null
    error: null

update_linkage_setting:
  method: PATCH
  path: /v1/money-planner/linkages/{target_system}
  request:
    enabled: true
    share_scope: "financial_plan_summary"
  response_200:
    success: true
    data:
      target_system: "life_planner"
      enabled: true
      share_scope: "financial_plan_summary"
      updated_at: "2026-04-14T20:15:00+09:00"
    error: null

manual_share:
  method: POST
  path: /v1/money-planner/linkages/share
  request:
    target_system: "inheritance_support"
    share_scope: "asset_summary"
    payload:
      plan_id: "uuid"
      base_currency: "JPY"
      total_assets: "5200000.00"
      total_liabilities: "1800000.00"
      net_worth: "3400000.00"
      asset_summaries:
        - asset_type: "bank_deposit"
          amount: "1200000.00"
          currency_code: "JPY"
        - asset_type: "real_estate"
          amount: "3000000.00"
          currency_code: "JPY"
  response_200:
    success: true
    data:
      target_system: "inheritance_support"
      share_scope: "asset_summary"
      shared_at: "2026-04-14T20:20:00+09:00"
    error: null

role_rules:
  owner:
    - get_linkages
    - update_linkage_setting
    - manual_share
  partner_editor:
    - get_linkages(read_limited)
  viewer: []

business_rules:
  - manual_share は owner のみ
  - enabled=false の target_system に share する場合は warning 候補
  - share_scope=none のまま manual_share は不可
  - private 項目は payload に含めない
  - selected_only は owner が明示選択した対象だけ含める
