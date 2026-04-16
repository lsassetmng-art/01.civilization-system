# ============================================================
# LIFE PLANNER DATE CURRENCY EDGE CASES
# ============================================================

status: draft
system: LifePlanner
layer: 130.development
subfolder: 070.edge-cases
owner: Boss
prepared_by: Zero
schema: life

edge_cases:
  - case_id: LP-EDGE-DATE-001
    case:
      - end_year is earlier than start_year
    expected_behavior:
      - validation error

  - case_id: LP-EDGE-DATE-002
    case:
      - date_range event has end_date earlier than start_date
    expected_behavior:
      - validation error

  - case_id: LP-EDGE-DATE-003
    case:
      - event_mode is single_date but both start_date and end_date are set
    expected_behavior:
      - validation error

  - case_id: LP-EDGE-CUR-001
    case:
      - estimated_cost_minor exists without currency_code
    expected_behavior:
      - validation error

  - case_id: LP-EDGE-CUR-002
    case:
      - dashboard tries to sum mixed currencies as one total
    expected_behavior:
      - separated totals or explicit conversion note only

  - case_id: LP-EDGE-CUR-003
    case:
      - scenario compare includes some scenarios with cost and some without
    expected_behavior:
      - compare view allows null cost display without false total
