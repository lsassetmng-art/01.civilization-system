# ============================================================
# MONEY PLANNER END OF LIFE PLANNER RECEIVE PAYLOAD DESIGN
# ============================================================

status: canonical-draft
system: MoneyPlanner
layer: 060.integration
source_system: EndOfLifePlanner
direction: receive_to_money_planner

purpose:
  - 終活イベントに伴う費用候補を MoneyPlanner に取り込む
  - 医療/介護/葬儀/引継ぎ関連の資金準備を可視化する
  - 終活設計と資金確保をつなぐ

receive_policy:
  - 明示受入のみ
  - 終活計画の意思決定そのものは行わない
  - 医療判断は受け入れない
  - 法的効力の判断は受け入れない
  - 費用候補と準備メモのみを対象にする

payload_shape:
  request:
    source_system: "end_of_life_planner"
    share_scope: "end_of_life_cost_candidate"
    payload:
      end_of_life_plan_id: "uuid"
      base_currency: "JPY"
      cost_candidates:
        - candidate_id: "uuid"
          category: "funeral"
          title: "葬儀費用候補"
          planned_date: null
          estimated_amount: "1500000.00"
          currency_code: "JPY"
          priority: "high"
          note: "家族と要相談"
        - candidate_id: "uuid"
          category: "care"
          title: "介護準備費用候補"
          planned_date: null
          estimated_amount: "800000.00"
          currency_code: "JPY"
          priority: "medium"
          note: null
      handover_notes:
        - note_id: "uuid"
          title: "口座一覧の引継ぎ準備"
          body: "整理状況は別紙参照"

mapping_policy:
  cost_candidates_to_event_budget:
    target:
      - mp_event_budget
    mapped_fields:
      - title -> event_name
      - planned_date -> planned_date
      - estimated_amount -> target_amount
      - currency_code -> currency_code
      - priority -> priority
      - note -> memo

  cost_candidates_to_saving_goal_candidate:
    conditions:
      - priority = high
      - estimated_amount が存在
    target:
      - mp_saving_goal candidate
    mapped_fields:
      - title -> goal_name candidate
      - estimated_amount -> target_amount candidate

  handover_notes_to_memo:
    target:
      - mp_memo_item
    mapped_fields:
      - title -> title
      - body -> body
    memo_type:
      - handover

receive_validation:
  required:
    - source_system
    - share_scope
    - payload.end_of_life_plan_id
    - payload.base_currency
  nullable_allowed:
    - planned_date
    - note
  rejected_cases:
    - estimated_amount が負数
    - currency_code 不正
    - title 空

receive_result_shape:
  success_response:
    success: true
    data:
      imported_event_budget_candidates: 2
      imported_saving_goal_candidates: 1
      imported_handover_memos: 1
      received_at: "2026-04-14T20:00:00+09:00"

notes:
  - 終活費用は sensitive なため default_visibility は private 推奨
  - owner 確認後に shared へ変更可能
