# ============================================================
# LIFE PLANNER DERIVED METRIC CATALOG
# ============================================================

status: draft
system: LifePlanner
layer: 030.model
subfolder: 050.derived-definition
owner: Boss
prepared_by: Zero
schema: life

catalog:

  - metric_id: total_goal_count
    meaning:
      - selected plan配下の goal 件数
    source_entities:
      - life.life_goal

  - metric_id: completed_goal_count
    meaning:
      - goal_status = completed の件数
    source_entities:
      - life.life_goal

  - metric_id: in_progress_goal_count
    meaning:
      - goal_status = in_progress の件数
    source_entities:
      - life.life_goal

  - metric_id: paused_goal_count
    meaning:
      - goal_status = paused の件数
    source_entities:
      - life.life_goal

  - metric_id: upcoming_event_count
    meaning:
      - near-term window に入る event 件数
    source_entities:
      - life.life_event_timeline

  - metric_id: next_event_title
    meaning:
      - upcoming event のうち最も近い event title
    source_entities:
      - life.life_event_timeline

  - metric_id: next_event_date
    meaning:
      - upcoming event のうち最も近い基準日
    source_entities:
      - life.life_event_timeline

  - metric_id: review_count
    meaning:
      - selected plan 配下の review log 件数
    source_entities:
      - life.life_review_log

  - metric_id: last_reviewed_at
    meaning:
      - 最新 review_log.reviewed_at
    source_entities:
      - life.life_review_log

  - metric_id: pending_candidate_count
    meaning:
      - reflection_status = pending の件数
    source_entities:
      - life.life_reflection_candidate

  - metric_id: shared_member_count
    meaning:
      - pending/accepted を含む共有相手件数
    source_entities:
      - life.life_shared_member

  - metric_id: accepted_shared_member_count
    meaning:
      - invite_status = accepted の件数
    source_entities:
      - life.life_shared_member

  - metric_id: same_currency_estimated_cost_total_minor
    meaning:
      - 同一通貨で合算可能な概算費用合計
    source_entities:
      - life.life_goal
      - life.life_event_timeline
      - life.life_scenario

  - metric_id: stale_plan_flag
    meaning:
      - 一定期間 review/update がなく stale 条件に該当
    source_entities:
      - life.life_plan
      - life.life_review_log

metric_policy_note:
  - near-term window and stale thresholds are policy driven
  - metric meaning must not silently change by screen
