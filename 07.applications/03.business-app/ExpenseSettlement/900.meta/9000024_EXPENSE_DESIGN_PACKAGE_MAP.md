# ============================================================
# EXPENSE DESIGN PACKAGE MAP
# ============================================================

status: canonical
layer: meta
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

purpose:
Provides a package-level map of the ExpenseSettlement design set.

package_map:

  root_summary_package:
    files:
      - 000_EXPENSE_SETTLEMENT_OVERVIEW.md
      - 00_EXPENSE_SETTLEMENT_INTEGRATED.md
      - 00_EXPENSE_SETTLEMENT_FINAL_INTEGRATED_SUMMARY.md

  architecture_and_model_package:
    files:
      - 0200002_EXPENSE_SETTLEMENT_APPLICATION_ARCHITECTURE.md
      - 0300006_EXPENSE_PHYSICAL_DATA_MODEL.md
      - 0600004_EXPENSE_API_EXACT_PAYLOAD_CONTRACT.md

  runtime_and_security_package:
    files:
      - 0400005_EXPENSE_STATE_TRANSITION_DESIGN.md
      - 1000004_EXPENSE_AUTHORITY_AND_ACCESS_DESIGN.md

  policy_core_package:
    files:
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

  operations_and_audit_package:
    files:
      - 0700004_EXPENSE_NOTIFICATION_DESIGN.md
      - 0700005_EXPENSE_AUDIT_HISTORY_EVIDENCE_DESIGN.md

  closure_and_handoff_package:
    files:
      - 9000005_EXPENSE_CURRENT_CLOSURE_CANDIDATE_NOTE.md
      - 9000006_EXPENSE_CURRENT_STATUS_SUMMARY.md
      - 9000007_EXPENSE_NEXT_CHAT_HANDOFF.md
      - 9000008_EXPENSE_DESIGN_RECONCILIATION_NOTE.md
      - 9000009_EXPENSE_FINAL_HANDOFF_PACKAGE.md
      - 9000010_EXPENSE_DESIGN_COMPLETION_ASSESSMENT.md
      - 9000014_EXPENSE_FINAL_CLOSURE_CHECKLIST.md
      - 9000015_EXPENSE_RESTART_QUICK_MAP.md
      - 9000017_EXPENSE_FINAL_NAVIGATION_NOTE.md
      - 9000020_EXPENSE_MASTER_RESTART_NOTE.md
      - 9000023_EXPENSE_ROUND_FINALIZATION_NOTE.md

map_rule:
- broad review starts from root_summary_package
- policy tuning starts from policy_core_package
- restart/handoff starts from closure_and_handoff_package

