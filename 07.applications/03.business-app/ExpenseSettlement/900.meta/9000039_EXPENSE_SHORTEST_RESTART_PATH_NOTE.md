# ============================================================
# EXPENSE SHORTEST RESTART PATH NOTE
# ============================================================

status: canonical
layer: meta
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

purpose:
Defines the shortest restart path for future continuation.

shortest_restart_path:

  step_1:
    - 00_EXPENSE_SETTLEMENT_FINAL_INTEGRATED_SUMMARY.md

  step_2:
    - 9000009_EXPENSE_FINAL_HANDOFF_PACKAGE.md

  step_3_if_needed:
    - 9000020_EXPENSE_MASTER_RESTART_NOTE.md

single_sentence_rule:
If restarting fast, read summary first, handoff second, master restart note third.

