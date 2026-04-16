# ============================================================
# LIFE PLANNER CORE SCENARIO ACCEPTANCE CRITERIA
# ============================================================

status: draft
system: LifePlanner
layer: 120.implementation
subfolder: 040.acceptance-criteria
owner: Boss
prepared_by: Zero
schema: life

core_scenarios:

  scenario_01_create_plan:
    acceptance:
      - user can create a life plan with plan_name, start_year, end_year
      - created plan becomes visible in life_plan_list
      - created plan opens in life_plan_detail
      - persistence target is conceptually life.life_plan

  scenario_02_create_goal:
    acceptance:
      - user can add goal under a selected plan
      - goal appears in goal_list
      - goal summary on plan detail updates as derived view
      - cost fields remain optional but valid when used

  scenario_03_create_timeline_event:
    acceptance:
      - user can create single date or date range event
      - event appears in timeline view
      - next event summary can be derived on plan detail or home

  scenario_04_append_review_log:
    acceptance:
      - owner can append review reason and change summary
      - review log remains append-oriented
      - latest review summary becomes visible in plan detail

  scenario_05_reflection_candidate_apply:
    acceptance:
      - external signal is first visible as reflection candidate
      - owner can apply or dismiss pending candidate only
      - applying candidate causes review log creation
      - no automatic final apply occurs without explicit owner action

  scenario_06_family_share:
    acceptance:
      - owner can invite family_viewer or family_editor
      - shared role sees only shared scope categories
      - family_editor can edit within allowed scope
      - family_viewer cannot edit

  scenario_07_scenario_compare:
    acceptance:
      - Family plan can create and compare scenarios
      - compare result is view-oriented and does not auto-overwrite plan
      - owner can store final scenario decision
