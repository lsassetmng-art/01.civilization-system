# ============================================================
# EXPENSE MASTER RESTART NOTE
# ============================================================

status: canonical
layer: meta
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

purpose:
Provides the master restart note for ExpenseSettlement so future work can restart
from a single controlling document path.

master_restart_principle:
- restart should begin from the smallest sufficient entry set
- broad concept should not be reopened unnecessarily
- summary docs should guide first
- detail docs should be read only after restart intent is clear

master_restart_order:

  step_1:
    read:
      - 000_EXPENSE_SETTLEMENT_OVERVIEW.md
      - 00_EXPENSE_SETTLEMENT_FINAL_INTEGRATED_SUMMARY.md

  step_2:
    read:
      - 9000009_EXPENSE_FINAL_HANDOFF_PACKAGE.md
      - 9000010_EXPENSE_DESIGN_COMPLETION_ASSESSMENT.md

  step_3_if_policy_tuning:
    read:
      - 0800018_EXPENSE_INITIAL_MASTER_CATALOG_BUNDLE.md
      - 9000004_EXPENSE_OPEN_ITEMS_REFRESH_AFTER_POLICY_BATCH.md

  step_3_if_closure_review:
    read:
      - 9000011_EXPENSE_FINAL_REVIEW_VIEWPOINTS.md
      - 9000014_EXPENSE_FINAL_CLOSURE_CHECKLIST.md

  step_3_if_new_chat_restart:
    read:
      - 9000007_EXPENSE_NEXT_CHAT_HANDOFF.md
      - 9000015_EXPENSE_RESTART_QUICK_MAP.md
      - 9000019_EXPENSE_REENTRY_ENTRYPOINT_NOTE.md

master_restart_rule:
- do not start from scattered detail docs without a restart purpose
- if the purpose is unclear, start from overview + final integrated summary + final handoff package

conclusion:
This note is the single safest restart controller for the current design round.

