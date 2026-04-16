# ============================================================
# EXPENSE REENTRY ENTRYPOINT NOTE
# ============================================================

status: canonical
layer: meta
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

purpose:
Defines the exact reentry entrypoint note for future continuation.

recommended_reentry_paths:

  broad_review_path:
    read_order:
      - 000_EXPENSE_SETTLEMENT_OVERVIEW.md
      - 00_EXPENSE_SETTLEMENT_FINAL_INTEGRATED_SUMMARY.md
      - 9000009_EXPENSE_FINAL_HANDOFF_PACKAGE.md

  closure_review_path:
    read_order:
      - 9000010_EXPENSE_DESIGN_COMPLETION_ASSESSMENT.md
      - 9000011_EXPENSE_FINAL_REVIEW_VIEWPOINTS.md
      - 9000014_EXPENSE_FINAL_CLOSURE_CHECKLIST.md

  parameter_tuning_path:
    read_order:
      - 0800018_EXPENSE_INITIAL_MASTER_CATALOG_BUNDLE.md
      - 9000004_EXPENSE_OPEN_ITEMS_REFRESH_AFTER_POLICY_BATCH.md

  restart_in_new_chat_path:
    read_order:
      - 9000007_EXPENSE_NEXT_CHAT_HANDOFF.md
      - 9000015_EXPENSE_RESTART_QUICK_MAP.md
      - 9000019_EXPENSE_REENTRY_ENTRYPOINT_NOTE.md

single_sentence_reentry_prompt:
Continue ExpenseSettlement from the current canonical design set,
do not reopen broad concept decisions,
and focus only on the next agreed narrow bundle.

