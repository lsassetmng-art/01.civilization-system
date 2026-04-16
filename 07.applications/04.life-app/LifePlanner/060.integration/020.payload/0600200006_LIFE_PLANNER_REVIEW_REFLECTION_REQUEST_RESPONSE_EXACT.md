# ============================================================
# LIFE PLANNER REVIEW / REFLECTION REQUEST / RESPONSE EXACT
# ============================================================

status: draft
system: LifePlanner
layer: 060.integration
subfolder: 020.payload
owner: Boss
prepared_by: Zero

operations:

  - operation_id: life_review.create
    purpose:
      - 見直し履歴を追加する
    request:
      plan_id: string
      trigger_source:
        type: string
        allowed:
          - manual
          - money_planner
          - end_of_life_planner
          - body_metrics
          - training_coach
          - legal_support_app
      change_summary: string
      reason: string
      reviewer_role:
        type: string
        allowed:
          - owner
          - family_editor
    response:
      status: ok
      data:
        review_log:
          review_id: string
          plan_id: string
          trigger_source: string
          change_summary: string
          reason: string
          reviewer_role: string
          reviewed_at: string
      meta:
        request_id: string
        server_time: string

  - operation_id: life_reflection_candidate.list
    purpose:
      - 他アプリからの見直し候補を一覧取得する
    request:
      plan_id: string
      status_filter:
        type: string|null
        allowed:
          - pending
          - applied
          - dismissed
      source_filter: string|null
      page: integer
      page_size: integer
    response:
      status: ok
      data:
        candidates:
          - candidate_id: string
            source_app: string
            source_record_id: string
            status: string
            summary: string
            suggested_action: string|null
            affected_entity_type: string|null
            affected_entity_id: string|null
            created_at: string
            updated_at: string
        page: integer
        page_size: integer
        total_count: integer
      meta:
        request_id: string
        server_time: string

  - operation_id: life_reflection_candidate.apply
    purpose:
      - 見直し候補を採用する
    request:
      candidate_id: string
      plan_id: string
      apply_target_type:
        type: string
        allowed:
          - plan
          - goal
          - timeline_event
      apply_target_id: string|null
      apply_note: string|null
      review_reason: string
    response:
      status: ok
      data:
        candidate:
          candidate_id: string
          status: applied
          applied_at: string
        applied_result:
          apply_target_type: string
          apply_target_id: string
          review_id: string
      meta:
        request_id: string
        server_time: string

  - operation_id: life_reflection_candidate.dismiss
    purpose:
      - 見直し候補を却下する
    request:
      candidate_id: string
      dismiss_reason: string
    response:
      status: ok
      data:
        candidate:
          candidate_id: string
          status: dismissed
          dismissed_at: string
          dismiss_reason: string
      meta:
        request_id: string
        server_time: string
