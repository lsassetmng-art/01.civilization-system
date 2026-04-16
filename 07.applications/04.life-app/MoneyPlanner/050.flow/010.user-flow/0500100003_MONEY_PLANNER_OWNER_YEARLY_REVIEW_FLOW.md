# ============================================================
# MONEY PLANNER OWNER YEARLY REVIEW FLOW
# ============================================================

status: canonical-draft
system: MoneyPlanner
layer: 050.flow
subdomain: user-flow

flow_name:
  en: Owner Yearly Review Flow
  ja: owner 年次レビュー flow

purpose:
  - 年単位で人生設計と資金計画の整合を取る
  - 大型イベント、老後、教育、住宅などの再評価を行う
  - シナリオ比較と家族共有範囲を見直す

actors:
  - owner

preconditions:
  - 対象年が確定している
  - yearly_projection を参照できる

main_flow:
  - step: 01
    action: yearly_projection を確認する
    check:
      - expected_income
      - expected_expense
      - expected_balance
      - event_impact_amount
      - goal_target_total
      - shortage_months_count

  - step: 02
    action: scenario_compare を確認する
    check:
      - default
      - saving
      - expense_increase
      - income_decrease
      - event_forward

  - step: 03
    action: LifePlanner 連携イベントを見直す
    check:
      - 年内イベント
      - 数年先イベント
      - 金額未設定イベント

  - step: 04
    action: EndOfLifePlanner / InheritanceSupport 由来候補を見直す
    check:
      - 終活費用候補
      - 相続準備費用候補
      - private 初期値の妥当性

  - step: 05
    action: saving_goal を再評価する
    check:
      - 目標額
      - 期限
      - 達成可能性
      - shared 可否

  - step: 06
    action: shared_member と visibility を見直す
    check:
      - viewer のままでよいか
      - partner_editor の範囲
      - private / shared / selected_only の妥当性

  - step: 07
    action: yearly review checkpoint を保存
    result:
      - yearly history_snapshot 候補生成
      - audit_event 候補生成

yearly_review_outputs:
  - annual revised plan
  - revised goals
  - revised event budgets
  - revised sharing policy
  - yearly checkpoint

warning_points:
  - 税務/法務/投資判断に踏み込まない
  - shared 化は必要最小限にとどめる
  - candidate を確定値として扱う前に owner review を完了する
