# ============================================================
# EXPENSE SLICE01 ISSUE AND CHANGE NAVIGATION
# ============================================================

status: canonical
layer: meta
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

purpose:
Provides the navigation order when slice_01 hits issues or needs changes.

navigation_order:
- 1300011_EXPENSE_FIRST_IMPLEMENTATION_SLICE_LOCK.md
- 1300020_EXPENSE_SLICE01_RISK_REGISTER.md
- 1300021_EXPENSE_SLICE01_REVIEW_GATE.md
- 1300022_EXPENSE_SLICE01_ACCEPTANCE_CHECKLIST.md
- 1300023_EXPENSE_SLICE01_HOLD_CONDITIONS.md
- 1300025_EXPENSE_SLICE01_ISSUE_CLASSIFICATION.md
- 1300026_EXPENSE_CANONICAL_DEVIATION_HANDLING.md
- 1300027_EXPENSE_IMPLEMENTATION_CHANGE_REQUEST_TEMPLATE.md
- 1300028_EXPENSE_SLICE01_COMPLETION_REPORT_TEMPLATE.md

navigation_rule:
When issues appear, do not jump straight to redesign.
Classify first, then repair or escalate intentionally.

