# ============================================================
# LIFE PLANNER GOAL REQUEST / RESPONSE EXACT
# ============================================================

status: draft
system: LifePlanner
layer: 060.integration
subfolder: 020.payload
owner: Boss
prepared_by: Zero

operations:

  - operation_id: life_goal.create
    purpose:
      - 目標を作成する
    request:
      plan_id: string
      category: string
      title: string
      description: string|null
      priority:
        type: string
        allowed:
          - low
          - medium
          - high
          - critical
      status:
        type: string
        allowed:
          - not_started
          - planned
          - in_progress
          - completed
          - paused
          - cancelled
      start_target_date: string|null
      end_target_date: string|null
      estimated_cost_minor: integer|null
      currency_code: string|null
      notes: string|null
    response:
      status: ok
      data:
        goal:
          goal_id: string
          plan_id: string
          category: string
          title: string
          description: string|null
          priority: string
          status: string
          start_target_date: string|null
          end_target_date: string|null
          estimated_cost_minor: integer|null
          currency_code: string|null
          notes: string|null
          created_at: string
          updated_at: string
      meta:
        request_id: string
        server_time: string

  - operation_id: life_goal.list
    purpose:
      - 計画に属する目標一覧を取得する
    request:
      plan_id: string
      category: string|null
      status: string|null
      priority: string|null
      page: integer
      page_size: integer
    response:
      status: ok
      data:
        goals:
          - goal_id: string
            category: string
            title: string
            priority: string
            status: string
            start_target_date: string|null
            end_target_date: string|null
            estimated_cost_minor: integer|null
            currency_code: string|null
            updated_at: string
        page: integer
        page_size: integer
        total_count: integer
      meta:
        request_id: string
        server_time: string

  - operation_id: life_goal.update
    purpose:
      - 目標を更新する
    request:
      goal_id: string
      category: string
      title: string
      description: string|null
      priority: string
      status: string
      start_target_date: string|null
      end_target_date: string|null
      estimated_cost_minor: integer|null
      currency_code: string|null
      notes: string|null
    response:
      status: ok
      data:
        goal:
          goal_id: string
          category: string
          title: string
          description: string|null
          priority: string
          status: string
          start_target_date: string|null
          end_target_date: string|null
          estimated_cost_minor: integer|null
          currency_code: string|null
          notes: string|null
          updated_at: string
      meta:
        request_id: string
        server_time: string

  - operation_id: life_goal.milestone.create
    purpose:
      - マイルストーンを作成する
    request:
      goal_id: string
      title: string
      target_date: string
      status:
        type: string
        allowed:
          - not_started
          - planned
          - in_progress
          - completed
          - paused
          - cancelled
      note: string|null
    response:
      status: ok
      data:
        milestone:
          milestone_id: string
          goal_id: string
          title: string
          target_date: string
          status: string
          note: string|null
          created_at: string
          updated_at: string
      meta:
        request_id: string
        server_time: string
