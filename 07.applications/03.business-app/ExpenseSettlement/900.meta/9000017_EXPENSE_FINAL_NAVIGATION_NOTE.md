# ============================================================
# EXPENSE FINAL NAVIGATION NOTE
# ============================================================

status: canonical
layer: meta
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

purpose:
Provides a final navigation note for the current ExpenseSettlement design round
so future review can find the correct starting documents quickly.

navigation_priority:

  level_1_root_entry:
    - 000_EXPENSE_SETTLEMENT_OVERVIEW.md
    - 00_EXPENSE_SETTLEMENT_INTEGRATED.md
    - 00_EXPENSE_SETTLEMENT_FINAL_INTEGRATED_SUMMARY.md

  level_2_current_round_status:
    - 9000005_EXPENSE_CURRENT_CLOSURE_CANDIDATE_NOTE.md
    - 9000006_EXPENSE_CURRENT_STATUS_SUMMARY.md
    - 9000010_EXPENSE_DESIGN_COMPLETION_ASSESSMENT.md
    - 9000013_EXPENSE_END_OF_ROUND_SUMMARY.md

  level_3_handoff_restart:
    - 9000007_EXPENSE_NEXT_CHAT_HANDOFF.md
    - 9000009_EXPENSE_FINAL_HANDOFF_PACKAGE.md
    - 9000015_EXPENSE_RESTART_QUICK_MAP.md

  level_4_detail_policy_bundle:
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

navigation_rule:
- broad restart begins from level_1_root_entry
- design-round evaluation begins from level_2_current_round_status
- cross-chat continuation begins from level_3_handoff_restart
- narrow policy tuning begins from level_4_detail_policy_bundle

conclusion:
This note exists so future work does not restart from scattered files blindly.

