# ============================================================
# EXPENSE RESTART QUICK MAP
# ============================================================

status: canonical
layer: meta
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

purpose:
Provides a quick restart map so a future chat or future review can
re-enter the design set in the shortest possible path.

restart_layers:

  if_you_need_the_whole_app_meaning:
    read:
      - 000_EXPENSE_SETTLEMENT_OVERVIEW.md
      - 00_EXPENSE_SETTLEMENT_INTEGRATED.md
      - 00_EXPENSE_SETTLEMENT_FINAL_INTEGRATED_SUMMARY.md

  if_you_need_current_status_only:
    read:
      - 9000005_EXPENSE_CURRENT_CLOSURE_CANDIDATE_NOTE.md
      - 9000006_EXPENSE_CURRENT_STATUS_SUMMARY.md
      - 9000013_EXPENSE_END_OF_ROUND_SUMMARY.md

  if_you_need_restart_in_another_chat:
    read:
      - 9000007_EXPENSE_NEXT_CHAT_HANDOFF.md
      - 9000009_EXPENSE_FINAL_HANDOFF_PACKAGE.md

  if_you_need_policy_deep_dive:
    read:
      - 0800007_EXPENSE_APPROVAL_ROUTE_POLICY_DETAIL.md
      - 0800008_EXPENSE_FINANCE_REVIEW_POLICY_DETAIL.md
      - 0800009_EXPENSE_CATEGORY_MASTER_POLICY.md
      - 0800010_EXPENSE_EVIDENCE_REQUIREMENT_MATRIX.md
      - 0800011_EXPENSE_TEMPLATE_MASTER_POLICY.md
      - 0800012_EXPENSE_CANDIDATE_INBOX_SOURCE_POLICY.md
      - 0800013_EXPENSE_ALLOCATION_POLICY_DETAIL.md
      - 0800014_EXPENSE_SETTLEMENT_BUSINESS_RULE_DETAIL.md
      - 0800015_EXPENSE_EXPORT_POLICY_DETAIL.md
      - 0800016_EXPENSE_REMINDER_POLICY_DETAIL.md
      - 0800017_EXPENSE_RECEIPT_AND_ATTACHMENT_FILE_POLICY.md
      - 0800018_EXPENSE_INITIAL_MASTER_CATALOG_BUNDLE.md

  if_you_need_runtime_and_authority_meaning:
    read:
      - 0400005_EXPENSE_STATE_TRANSITION_DESIGN.md
      - 1000004_EXPENSE_AUTHORITY_AND_ACCESS_DESIGN.md
      - 0700005_EXPENSE_AUDIT_HISTORY_EVIDENCE_DESIGN.md

restart_recommendation:
Do not restart from detail docs first unless the purpose is narrow.
For broad restart, begin with overview -> final integrated summary -> handoff package.

