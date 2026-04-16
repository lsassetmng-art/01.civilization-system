# ============================================================
# LIFE PLANNER PLAN SEARCH FILTER SORT
# ============================================================

status: draft
system: LifePlanner
layer: 090.interface
subfolder: 060.search-filter
owner: Boss
prepared_by: Zero
schema: life

target_screen:
  - life_plan_list

search_input:
  - item_id: plan_keyword_search
    label_ja: 計画検索
    target_fields:
      - life.life_plan.plan_name
      - life.life_plan.summary
    input_type:
      - text

filters:
  - filter_id: plan_visibility_filter
    label_ja: 公開範囲
    target_field:
      - life.life_plan.visibility_policy
    options:
      - private
      - family_shared

  - filter_id: plan_status_filter
    label_ja: 計画状態
    target_field:
      - life.life_plan.plan_status
    options:
      - draft
      - active
      - archived

  - filter_id: plan_period_filter
    label_ja: 計画期間
    target_field:
      - life.life_plan.start_year
      - life.life_plan.end_year
    input_type:
      - year_range

sort_options:
  - updated_at_desc
  - updated_at_asc
  - created_at_desc
  - created_at_asc
  - start_year_asc
  - end_year_desc
  - plan_name_asc

visibility_rules:
  owner:
    - own plans visible
  family_editor:
    - shared plans within scope visible
  family_viewer:
    - shared plans within scope visible

ui_rules:
  - mobile uses one search bar + compact filter sheet
  - tablet_pc may show persistent side filter panel
