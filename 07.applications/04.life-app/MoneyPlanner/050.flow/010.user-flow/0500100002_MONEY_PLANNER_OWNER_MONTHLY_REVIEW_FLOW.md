# ============================================================
# MONEY PLANNER OWNER MONTHLY REVIEW FLOW
# ============================================================

status: canonical-draft
system: MoneyPlanner
layer: 050.flow
subdomain: user-flow

flow_name:
  en: Owner Monthly Review Flow
  ja: owner 月次レビュー flow

purpose:
  - 月単位で資金計画の実態を確認する
  - 収入/支出/資産/負債の更新漏れを防ぐ
  - 目標積立とイベント費用を見直す
  - 次月の資金不足リスクを確認する

actors:
  - owner

preconditions:
  - 対象月が確定している
  - current plan が存在する

main_flow:
  - step: 01
    action: dashboard を開く
    check:
      - total_income
      - total_expense
      - net_worth
      - active_goal_count
      - upcoming_count

  - step: 02
    action: monthly_projection を確認する
    check:
      - expected_balance
      - shortage_flag
      - high_priority_event_amount

  - step: 03
    action: income_list / expense_list を確認する
    check:
      - active_flag の妥当性
      - 月内変更の反映漏れ
      - 不要項目の残存

  - step: 04
    action: asset_list / liability_list を確認する
    check:
      - 金額更新
      - private / shared の見直し
      - 大きな変動の確認

  - step: 05
    action: saving_goal / event_budget を確認する
    check:
      - target_amount の妥当性
      - current_saved_amount の更新
      - planned_date の見直し

  - step: 06
    action: receive candidate review を確認する
    check:
      - 新規候補の有無
      - duplicate の有無
      - confirm/reject 要否

  - step: 07
    action: 必要ならメモ更新
    check:
      - insurance
      - pension
      - tax_estimate
      - handover

  - step: 08
    action: monthly review checkpoint を保存
    result:
      - history_snapshot 候補生成
      - audit_event 候補生成

monthly_review_outputs:
  - updated monthly state
  - shortage risk acknowledgment
  - confirmed candidate imports
  - monthly checkpoint

warning_points:
  - shared summary と owner summary を混同しない
  - imported candidate を未確認のまま shared 化しない
  - 大型イベント費用の見落としを避ける
