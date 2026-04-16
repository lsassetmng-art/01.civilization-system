# ============================================================
# LIFE PLANNER INBOUND APP ASSUMPTION MATRIX
# ============================================================

status: draft
system: LifePlanner
layer: 060.integration
subfolder: 040.connected-app-assumption
owner: Boss
prepared_by: Zero
schema: life

matrix:

  - source_app: MoneyPlanner
    expected_signal_types:
      - estimated_cost_changed
      - savings_plan_changed
      - major_financial_goal_changed
    expected_effect:
      - finance category review prompt
      - goal cost summary review
      - scenario comparison refresh candidate
    import_style:
      - summary only
      - no raw transaction import

  - source_app: EndOfLifePlanner
    expected_signal_types:
      - end_of_life_preparation_changed
      - inheritance_preparation_changed
      - will_related_task_changed
    expected_effect:
      - end_of_life category review prompt
      - legal / family continuity prompt
    import_style:
      - summary only
      - sensitive handling required

  - source_app: BodyMetrics
    expected_signal_types:
      - health_trend_changed
      - body_goal_changed
    expected_effect:
      - health category goal review
      - schedule and sustainability prompt
    import_style:
      - summary only
      - no detailed raw health timeline required in LifePlanner

  - source_app: TrainingCoach
    expected_signal_types:
      - training_goal_changed
      - consistency_risk_detected
    expected_effect:
      - health goal review
      - routine adjustment candidate
    import_style:
      - summary only

  - source_app: legal_support_app_group
    expected_signal_types:
      - procedure_note_added
      - legal_preparation_due
    expected_effect:
      - legal category event candidate
      - review reminder
    import_style:
      - memo summary only
      - no legal judgement import

common_assumption_rules:
  - inbound data becomes reflection candidate first
  - no upstream app overwrites LifePlanner directly
  - exact upstream payload can differ, but semantic mapping should converge
