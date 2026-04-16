# ============================================================
# EXPENSE NEXT ROUND START CONDITIONS
# ============================================================

status: canonical
layer: meta
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

purpose:
Defines what should trigger the next round of ExpenseSettlement work.

next_round_start_modes:

  mode_A_parameter_tuning:
    start_when:
      - company-specific matrices need concrete values
      - exact localized labels must be filled
      - exact finance/export/settlement catalogs must be fixed

  mode_B_consolidation:
    start_when:
      - the design set should be cleaned up or reduced in repetition
      - integrated summary package should be refined further

  mode_C_implementation_readiness_review:
    start_when:
      - and only when explicitly requested
      - design must be reviewed for implementation sufficiency
      - still separate from actual implementation work

start_rule:
- do not reopen broad concept unless contradiction or higher-level rule change exists
- prefer narrow bundle continuation
- use restart/handoff docs first before opening new detail work

recommended_default_next_round:
mode_A_parameter_tuning

