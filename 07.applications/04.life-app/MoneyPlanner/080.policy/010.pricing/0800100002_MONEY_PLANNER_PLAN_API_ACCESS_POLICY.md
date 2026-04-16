# ============================================================
# MONEY PLANNER PLAN API ACCESS POLICY
# ============================================================

status: canonical-draft
system: MoneyPlanner
layer: 080.policy

plans:
  free:
    allowed_api_groups:
      - dashboard
      - incomes
      - expenses
      - assets
      - liabilities
      - saving_goals
      - event_budgets
      - projections.monthly
      - projections.yearly
      - memos
    denied_api_groups:
      - scenarios.compare
      - sharing.members
      - alerts
      - linkages.share
    notes:
      - 単一シナリオ前提
      - 家族共有なし

  plus_family:
    allowed_api_groups:
      - dashboard
      - incomes
      - expenses
      - assets
      - liabilities
      - saving_goals
      - event_budgets
      - projections.monthly
      - projections.yearly
      - memos
      - scenarios
      - scenarios.compare
      - sharing.members
      - alerts
      - linkages
      - linkages.share
    denied_api_groups: []
    notes:
      - 家族共有あり
      - 複数シナリオ比較あり
      - 手動共有あり

enforcement_policy:
  - plan 判定は API gateway or application service で行う
  - denied は 422 系 error code を返す
  - UI は plan ごとにボタン表示も制御する
