# ============================================================
# MONEY PLANNER INHERITANCE SUPPORT RECEIVE PAYLOAD DESIGN
# ============================================================

status: canonical-draft
system: MoneyPlanner
layer: 060.integration
source_system: InheritanceSupport
direction: receive_to_money_planner

purpose:
  - 相続/贈与準備に伴う将来イベントや準備費用を MoneyPlanner に反映する
  - 相続手続きそのものではなく、資金計画上の候補を受け取る
  - 法務判断ではなく費用候補・時期候補・補足メモを扱う

receive_policy:
  - 明示受入のみ
  - 相続割合の確定判断は受け入れない
  - 税務確定値は受け入れない
  - 手続き費用候補とイベント候補のみ扱う
  - 不確実情報は memo として保持可能

payload_shape:
  request:
    source_system: "inheritance_support"
    share_scope: "inheritance_financial_candidate"
    payload:
      inheritance_case_id: "uuid"
      base_currency: "JPY"
      event_candidates:
        - candidate_id: "uuid"
          title: "相続手続関連費用"
          planned_date: "2032-05-01"
          estimated_amount: "500000.00"
          currency_code: "JPY"
          priority: "high"
          note: "専門家費用含む見込み"
        - candidate_id: "uuid"
          title: "生前贈与準備費用"
          planned_date: null
          estimated_amount: "100000.00"
          currency_code: "JPY"
          priority: "medium"
          note: null
      informational_notes:
        - note_id: "uuid"
          title: "不動産評価は未確定"
          body: "金額は別途再確認が必要"

mapping_policy:
  event_candidates_to_event_budget:
    target:
      - mp_event_budget
    mapped_fields:
      - title -> event_name
      - planned_date -> planned_date
      - estimated_amount -> target_amount
      - currency_code -> currency_code
      - priority -> priority
      - note -> memo

  event_candidates_to_saving_goal_candidate:
    conditions:
      - estimated_amount が存在
      - priority in (high, medium)
    target:
      - mp_saving_goal candidate
    mapped_fields:
      - title -> goal_name candidate
      - estimated_amount -> target_amount candidate
      - planned_date -> target_date candidate

  informational_notes_to_memo:
    target:
      - mp_memo_item
    memo_type:
      - general
    mapped_fields:
      - title -> title
      - body -> body

receive_validation:
  required:
    - source_system
    - share_scope
    - payload.inheritance_case_id
    - payload.base_currency
  rejected_cases:
    - source_system 不一致
    - share_scope 不一致
    - estimated_amount が負数
    - title 空
    - currency_code 不正

receive_result_shape:
  success_response:
    success: true
    data:
      imported_event_budget_candidates: 2
      imported_saving_goal_candidates: 2
      imported_notes: 1
      received_at: "2026-04-14T20:00:00+09:00"

notes:
  - default_visibility は private 推奨
  - 共有前に owner review を必須とする
