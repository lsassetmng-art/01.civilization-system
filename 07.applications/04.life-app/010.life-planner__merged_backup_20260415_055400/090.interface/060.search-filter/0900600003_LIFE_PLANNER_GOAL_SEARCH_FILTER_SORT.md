# ============================================================
# LIFE PLANNER GOAL SEARCH FILTER SORT
# ============================================================

status: draft
system: LifePlanner
layer: 090.interface
subfolder: 060.search-filter
owner: Boss
prepared_by: Zero
schema: life

target_screens:
  - goal_list
  - life_plan_detail goal summary expansion

search_input:
  - item_id: goal_keyword_search
    label_ja: 目標検索
    target_fields:
      - life.life_goal.title
      - life.life_goal.description
      - life.life_goal.notes

filters:
  - filter_id: goal_category_filter
    label_ja: カテゴリ
    target_field:
      - life.life_goal.category
    options_source:
      - category master

  - filter_id: goal_status_filter
    label_ja: 状態
    target_field:
      - life.life_goal.goal_status
    options:
      - not_started
      - planned
      - in_progress
      - completed
      - paused
      - cancelled

  - filter_id: goal_priority_filter
    label_ja: 優先順位
    target_field:
      - life.life_goal.priority
    options:
      - low
      - medium
      - high
      - critical

  - filter_id: goal_target_period_filter
    label_ja: 予定期間
    target_field:
      - life.life_goal.start_target_date
      - life.life_goal.end_target_date
    input_type:
      - date_range

sort_options:
  - priority_desc
  - end_target_date_asc
  - updated_at_desc
  - category_asc
  - title_asc

scope_rules:
  - family roles only search within shared scope categories
  - hidden sensitive categories do not appear in results or filter counts
