# ============================================================
# LIFE PLANNER PLAN REQUEST / RESPONSE EXACT
# ============================================================

status: draft
system: LifePlanner
layer: 060.integration
subfolder: 020.payload
owner: Boss
prepared_by: Zero

operations:

  - operation_id: life_plan.create
    purpose:
      - 人生計画表を新規作成する
    request:
      plan_name: string
      start_year: integer
      end_year: integer
      summary: string|null
      primary_categories:
        - string
      visibility_policy:
        type: string
        allowed:
          - private
          - family_shared
    response:
      status: ok
      data:
        plan:
          plan_id: string
          plan_name: string
          owner_user_id: string
          start_year: integer
          end_year: integer
          summary: string|null
          primary_categories:
            - string
          visibility_policy: string
          created_at: string
          updated_at: string
      meta:
        request_id: string
        server_time: string

  - operation_id: life_plan.list
    purpose:
      - 計画一覧を取得する
    request:
      page: integer
      page_size: integer
      include_shared: boolean
      sort_by:
        type: string
        allowed:
          - updated_at_desc
          - updated_at_asc
          - created_at_desc
          - created_at_asc
    response:
      status: ok
      data:
        plans:
          - plan_id: string
            plan_name: string
            start_year: integer
            end_year: integer
            summary: string|null
            visibility_policy: string
            shared_member_count: integer
            updated_at: string
        page: integer
        page_size: integer
        total_count: integer
      meta:
        request_id: string
        server_time: string

  - operation_id: life_plan.detail
    purpose:
      - 1件の計画詳細を取得する
    request:
      plan_id: string
      include_goal_summary: boolean
      include_timeline_summary: boolean
      include_review_summary: boolean
    response:
      status: ok
      data:
        plan:
          plan_id: string
          plan_name: string
          owner_user_id: string
          start_year: integer
          end_year: integer
          summary: string|null
          primary_categories:
            - string
          visibility_policy: string
          created_at: string
          updated_at: string
        goal_summary:
          total_count: integer
          completed_count: integer
          in_progress_count: integer
          total_estimated_cost_minor: integer|null
          currency_code: string|null
        timeline_summary:
          upcoming_event_count: integer
          next_event_date: string|null
        review_summary:
          review_count: integer
          last_reviewed_at: string|null
      meta:
        request_id: string
        server_time: string

  - operation_id: life_plan.update
    purpose:
      - 人生計画表の基本情報を更新する
    request:
      plan_id: string
      plan_name: string
      start_year: integer
      end_year: integer
      summary: string|null
      primary_categories:
        - string
      visibility_policy:
        type: string
        allowed:
          - private
          - family_shared
    response:
      status: ok
      data:
        plan:
          plan_id: string
          plan_name: string
          start_year: integer
          end_year: integer
          summary: string|null
          primary_categories:
            - string
          visibility_policy: string
          updated_at: string
      meta:
        request_id: string
        server_time: string
