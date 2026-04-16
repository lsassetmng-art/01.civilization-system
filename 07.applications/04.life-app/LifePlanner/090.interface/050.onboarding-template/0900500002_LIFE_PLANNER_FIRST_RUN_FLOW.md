# ============================================================
# LIFE PLANNER FIRST RUN FLOW
# ============================================================

status: draft
system: LifePlanner
layer: 090.interface
subfolder: 050.onboarding-template
owner: Boss
prepared_by: Zero
schema: life

first_run_flow:
  - step_01:
      screen:
        - welcome
      goal:
        - アプリの役割理解
      actions:
        - start_setup
        - skip_to_blank_plan

  - step_02:
      screen:
        - setup_scope_choice
      goal:
        - 個人中心か家族共有前提かを選ぶ
      actions:
        - personal_start
        - family_start

  - step_03:
      screen:
        - horizon_choice
      goal:
        - 5y / 10y / 20y の主軸期間を選ぶ
      actions:
        - select_horizon

  - step_04:
      screen:
        - category_focus_choice
      goal:
        - 最初に重視するカテゴリを選ぶ
      actions:
        - select_categories

  - step_05:
      screen:
        - template_or_blank_choice
      goal:
        - テンプレート利用か白紙作成か選ぶ
      actions:
        - choose_template
        - create_blank

  - step_06:
      screen:
        - initial_plan_confirm
      goal:
        - 最低限の plan を生成する
      actions:
        - confirm_create

completion_goal:
  - life_plan が 1件生成される
  - 初回ホームに遷移できる
