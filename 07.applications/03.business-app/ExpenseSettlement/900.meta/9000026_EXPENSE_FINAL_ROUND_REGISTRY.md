# ============================================================
# EXPENSE FINAL ROUND REGISTRY
# ============================================================

status: canonical
layer: meta
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

purpose:
Provides a final registry of the current ExpenseSettlement design round,
so future work can identify the authoritative closure/support files quickly.

registry_groups:

  root_authorities:
    - 000_EXPENSE_SETTLEMENT_OVERVIEW.md
    - 00_EXPENSE_SETTLEMENT_INTEGRATED.md
    - 00_EXPENSE_SETTLEMENT_FINAL_INTEGRATED_SUMMARY.md

  design_core_authorities:
    - 0200002_EXPENSE_SETTLEMENT_APPLICATION_ARCHITECTURE.md
    - 0300006_EXPENSE_PHYSICAL_DATA_MODEL.md
    - 0400005_EXPENSE_STATE_TRANSITION_DESIGN.md
    - 0600004_EXPENSE_API_EXACT_PAYLOAD_CONTRACT.md
    - 1000004_EXPENSE_AUTHORITY_AND_ACCESS_DESIGN.md

  policy_authorities:
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

  closure_restart_authorities:
    - 9000009_EXPENSE_FINAL_HANDOFF_PACKAGE.md
    - 9000010_EXPENSE_DESIGN_COMPLETION_ASSESSMENT.md
    - 9000014_EXPENSE_FINAL_CLOSURE_CHECKLIST.md
    - 9000015_EXPENSE_RESTART_QUICK_MAP.md
    - 9000017_EXPENSE_FINAL_NAVIGATION_NOTE.md
    - 9000020_EXPENSE_MASTER_RESTART_NOTE.md
    - 9000023_EXPENSE_ROUND_FINALIZATION_NOTE.md
    - 9000024_EXPENSE_DESIGN_PACKAGE_MAP.md
    - 9000025_EXPENSE_NEXT_ROUND_START_CONDITIONS.md
    - 9000026_EXPENSE_FINAL_ROUND_REGISTRY.md

registry_rule:
- when in doubt, restart from root_authorities first
- if the goal is narrow policy tuning, use policy_authorities
- if the goal is pause/handoff/restart, use closure_restart_authorities

conclusion:
This registry is the final authoritative map for the current design round.

