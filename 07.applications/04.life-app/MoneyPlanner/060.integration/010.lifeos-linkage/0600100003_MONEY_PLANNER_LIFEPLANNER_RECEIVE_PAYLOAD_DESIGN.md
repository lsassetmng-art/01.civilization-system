# ============================================================
# MONEY PLANNER LIFePLANNER RECEIVE PAYLOAD DESIGN
# ============================================================

status: canonical-draft
system: MoneyPlanner
layer: 060.integration
source_system: LifePlanner
direction: receive_to_money_planner

purpose:
  - LifePlanner 上のライフイベントを MoneyPlanner の資金計画へ取り込む
  - 長期予定を event_budget / saving_goal / memo に変換できるようにする
  - 人生設計と資金計画を結びつける

receive_policy:
  - 明示受入のみ
  - 自動確定登録はしない
  - 受入後は下書き化または候補化できる
  - 金額未設定イベントも受け入れ可能
  - 法務/税務/投資判断は受け入れない

payload_shape:
  request:
    source_system: "life_planner"
    share_scope: "life_event_financial_candidate"
    payload:
      life_plan_id: "uuid"
      base_currency: "JPY"
      family_members:
        - member_ref: "self"
          display_name: "本人"
        - member_ref: "partner"
          display_name: "配偶者"
      life_events:
        - life_event_id: "uuid"
          event_name: "住宅購入"
          planned_date: "2028-04-01"
          related_member_ref: "self"
          financial_importance: "high"
          estimated_amount: "300000.00"
          currency_code: "JPY"
          note: "頭金以外は別検討"
        - life_event_id: "uuid"
          event_name: "子ども進学"
          planned_date: "2030-04-01"
          related_member_ref: "child_01"
          financial_importance: "high"
          estimated_amount: null
          currency_code: "JPY"
          note: null

mapping_policy:
  life_events_to_event_budget:
    conditions:
      - estimated_amount がある
      - event_name がある
    target:
      - mp_event_budget
    mapped_fields:
      - event_name -> event_name
      - planned_date -> planned_date
      - estimated_amount -> target_amount
      - currency_code -> currency_code
      - related_member_ref -> related_family_member
      - note -> memo

  life_events_to_saving_goal_candidate:
    conditions:
      - financial_importance = high
      - planned_date が将来日付
    target:
      - mp_saving_goal candidate
    mapped_fields:
      - event_name -> goal_name candidate
      - estimated_amount -> target_amount candidate
      - planned_date -> target_date candidate

  life_events_to_memo:
    conditions:
      - estimated_amount が未設定
      - note が存在
    target:
      - mp_memo_item
    mapped_fields:
      - event_name -> title
      - note -> body

receive_validation:
  required:
    - source_system
    - share_scope
    - payload.life_plan_id
    - payload.base_currency
    - payload.life_events
  nullable_allowed:
    - estimated_amount
    - note
    - related_member_ref
  rejected_cases:
    - source_system 不一致
    - share_scope 不一致
    - event_name 空
    - currency_code 不正
    - estimated_amount が負数

receive_result_shape:
  success_response:
    success: true
    data:
      imported_event_budget_candidates: 1
      imported_saving_goal_candidates: 2
      imported_memo_candidates: 1
      received_at: "2026-04-14T20:00:00+09:00"

notes:
  - 受入直後は confirmed ではなく draft_candidate 扱いが望ましい
  - 家族共有反映は owner の確認後
