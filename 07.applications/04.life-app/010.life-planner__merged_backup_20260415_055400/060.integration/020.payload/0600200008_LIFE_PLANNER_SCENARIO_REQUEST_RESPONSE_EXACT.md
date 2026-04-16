# ============================================================
# LIFE PLANNER SCENARIO REQUEST / RESPONSE EXACT
# ============================================================

status: draft
system: LifePlanner
layer: 060.integration
subfolder: 020.payload
owner: Boss
prepared_by: Zero

operations:

  - operation_id: life_scenario.create
    purpose:
      - シナリオを作成する
    request:
      plan_id: string
      scenario_name: string
      assumption_summary: string
      cost_summary_minor: integer|null
      currency_code: string|null
      risk_summary: string|null
      note: string|null
    response:
      status: ok
      data:
        scenario:
          scenario_id: string
          plan_id: string
          scenario_name: string
          assumption_summary: string
          cost_summary_minor: integer|null
          currency_code: string|null
          risk_summary: string|null
          note: string|null
          created_at: string
          updated_at: string
      meta:
        request_id: string
        server_time: string

  - operation_id: life_scenario.compare
    purpose:
      - 複数シナリオを比較する
    request:
      plan_id: string
      scenario_ids:
        - string
    response:
      status: ok
      data:
        compare_result:
          scenario_ids:
            - string
          cost_compare:
            - scenario_id: string
              cost_summary_minor: integer|null
              currency_code: string|null
          risk_compare:
            - scenario_id: string
              risk_summary: string|null
          comparison_generated_at: string
      meta:
        request_id: string
        server_time: string

  - operation_id: life_scenario.decision.apply
    purpose:
      - 比較結果に対する意思決定を保存する
    request:
      plan_id: string
      selected_scenario_id: string|null
      decision:
        type: string
        allowed:
          - keep_note_only
          - adopt_to_plan
          - archive_only
      decision_note: string|null
    response:
      status: ok
      data:
        scenario_decision:
          decision_id: string
          plan_id: string
          selected_scenario_id: string|null
          decision: string
          decision_note: string|null
          decided_at: string
      meta:
        request_id: string
        server_time: string
