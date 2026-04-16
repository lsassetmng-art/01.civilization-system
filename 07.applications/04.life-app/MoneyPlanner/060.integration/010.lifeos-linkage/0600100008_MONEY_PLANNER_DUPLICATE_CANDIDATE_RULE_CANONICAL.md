# ============================================================
# MONEY PLANNER DUPLICATE CANDIDATE RULE CANONICAL
# ============================================================

status: canonical-draft
system: MoneyPlanner
layer: 060.integration

purpose:
  - 他アプリ受入時の重複候補判定ルールを固定する
  - 自動上書きを禁止し、候補マージ判断を owner に委ねる

duplicate_detection_policy:
  - 完全一致のみで自動マージしない
  - 一定条件一致で duplicate_candidate_flag を立てる
  - duplicate は reference object を保持する
  - 同名でも別日付・別金額なら別候補を優先する

candidate_types:

  event_budget:
    strong_match_conditions:
      - event_name 一致
      - planned_date 一致
      - currency_code 一致
      - target_amount 一致
    soft_match_conditions:
      - event_name 一致
      - planned_date が近接
      - currency_code 一致
    result:
      - strong_match なら duplicate_candidate_flag = true
      - soft_match なら review_required_flag = true

  saving_goal:
    strong_match_conditions:
      - goal_name 一致
      - target_date 一致
      - target_amount 一致
      - currency_code 一致
    soft_match_conditions:
      - goal_name 類似
      - target_date 近接
    result:
      - strong_match なら duplicate_candidate_flag = true
      - soft_match なら review_required_flag = true

  memo:
    strong_match_conditions:
      - title 一致
      - body 一致
    soft_match_conditions:
      - title 一致
    result:
      - strong_match なら duplicate_candidate_flag = true
      - soft_match なら duplicate_candidate_flag = false だが review_note 推奨

  asset:
    strong_match_conditions:
      - asset_type 一致
      - title 一致
      - amount 一致
      - currency_code 一致
    result:
      - strong_match なら duplicate_candidate_flag = true

  liability:
    strong_match_conditions:
      - liability_type 一致
      - title 一致
      - balance_amount 一致
      - currency_code 一致
    result:
      - strong_match なら duplicate_candidate_flag = true

resolution_policy:
  owner_choices:
    - existing を採用し candidate を rejected
    - candidate を採用し existing を残す
    - candidate を採用し existing を archive 候補にする
    - note だけ既存へ転記する
  prohibited:
    - 自動上書き
    - partner_editor による最終マージ確定
