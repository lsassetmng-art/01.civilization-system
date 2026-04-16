# ============================================================
# LIFE PLANNER TIMELINE REQUEST / RESPONSE EXACT
# ============================================================

status: draft
system: LifePlanner
layer: 060.integration
subfolder: 020.payload
owner: Boss
prepared_by: Zero

operations:

  - operation_id: life_timeline.event.create
    purpose:
      - 年表イベントを作成する
    request:
      plan_id: string
      event_category: string
      title: string
      event_mode:
        type: string
        allowed:
          - single_date
          - date_range
      event_date: string|null
      start_date: string|null
      end_date: string|null
      linked_goal_id: string|null
      estimated_cost_minor: integer|null
      currency_code: string|null
      note: string|null
    response:
      status: ok
      data:
        event:
          event_id: string
          plan_id: string
          event_category: string
          title: string
          event_mode: string
          event_date: string|null
          start_date: string|null
          end_date: string|null
          linked_goal_id: string|null
          estimated_cost_minor: integer|null
          currency_code: string|null
          note: string|null
          created_at: string
          updated_at: string
      meta:
        request_id: string
        server_time: string

  - operation_id: life_timeline.event.list
    purpose:
      - 計画に属する年表イベントを取得する
    request:
      plan_id: string
      from_date: string|null
      to_date: string|null
      event_category: string|null
      include_linked_goal: boolean
    response:
      status: ok
      data:
        events:
          - event_id: string
            event_category: string
            title: string
            event_mode: string
            event_date: string|null
            start_date: string|null
            end_date: string|null
            linked_goal_id: string|null
            linked_goal_title: string|null
            estimated_cost_minor: integer|null
            currency_code: string|null
            note: string|null
            updated_at: string
      meta:
        request_id: string
        server_time: string

  - operation_id: life_timeline.event.update
    purpose:
      - 年表イベントを更新する
    request:
      event_id: string
      event_category: string
      title: string
      event_mode: string
      event_date: string|null
      start_date: string|null
      end_date: string|null
      linked_goal_id: string|null
      estimated_cost_minor: integer|null
      currency_code: string|null
      note: string|null
    response:
      status: ok
      data:
        event:
          event_id: string
          event_category: string
          title: string
          event_mode: string
          event_date: string|null
          start_date: string|null
          end_date: string|null
          linked_goal_id: string|null
          estimated_cost_minor: integer|null
          currency_code: string|null
          note: string|null
          updated_at: string
      meta:
        request_id: string
        server_time: string
