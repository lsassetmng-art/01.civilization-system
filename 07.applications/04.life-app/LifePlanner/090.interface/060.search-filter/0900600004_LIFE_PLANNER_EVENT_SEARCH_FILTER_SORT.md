# ============================================================
# LIFE PLANNER EVENT SEARCH FILTER SORT
# ============================================================

status: draft
system: LifePlanner
layer: 090.interface
subfolder: 060.search-filter
owner: Boss
prepared_by: Zero
schema: life

target_screens:
  - timeline_view
  - event list mode if enabled later

search_input:
  - item_id: event_keyword_search
    label_ja: イベント検索
    target_fields:
      - life.life_event_timeline.title
      - life.life_event_timeline.note

filters:
  - filter_id: event_category_filter
    label_ja: イベントカテゴリ
    target_field:
      - life.life_event_timeline.event_category

  - filter_id: event_mode_filter
    label_ja: 日付形式
    target_field:
      - life.life_event_timeline.event_mode
    options:
      - single_date
      - date_range

  - filter_id: event_period_filter
    label_ja: イベント期間
    target_field:
      - life.life_event_timeline.event_date
      - life.life_event_timeline.start_date
      - life.life_event_timeline.end_date
    input_type:
      - date_range

  - filter_id: linked_goal_filter
    label_ja: 関連目標あり
    target_field:
      - life.life_event_timeline.linked_life_goal_id
    options:
      - linked_only
      - unlinked_only
      - all

sort_options:
  - chronological_asc
  - chronological_desc
  - updated_at_desc
  - category_asc
  - title_asc

date_behavior:
  - single_date uses event_date
  - date_range uses start_date as primary ordering anchor
