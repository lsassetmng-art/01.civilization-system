# ============================================================
# EXPENSE FINANCE REASON CODE BASELINE
# ============================================================

status: canonical
layer: policy
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

purpose:
Defines the initial finance reason-code baseline for implementation-start readiness.

reason_code_catalog:

  policy_blocked:
    - FIN_POLICY_001_UNSUPPORTED_CATEGORY
    - FIN_POLICY_002_REQUIRED_FIELD_MISSING
    - FIN_POLICY_003_ROUTE_INCOMPLETE
    - FIN_POLICY_004_INVALID_PAYMENT_PATTERN
    - FIN_POLICY_005_INVALID_ALLOCATION
    - FIN_POLICY_006_INVALID_TAX_TREATMENT
    - FIN_POLICY_007_INVALID_CURRENCY_COMBINATION
    - FIN_POLICY_008_DUPLICATE_CONFIRMED
    - FIN_POLICY_009_UNSUPPORTED_ERP_HANDOFF_PATTERN

  evidence_defect:
    - FIN_EVIDENCE_001_REQUIRED_RECEIPT_MISSING
    - FIN_EVIDENCE_002_RECEIPT_UNREADABLE
    - FIN_EVIDENCE_003_INVALID_FILE_TYPE
    - FIN_EVIDENCE_004_EVIDENCE_MISMATCH
    - FIN_EVIDENCE_005_MULTIPLE_REQUIRED_EVIDENCE_INCOMPLETE
    - FIN_EVIDENCE_006_REPLACEMENT_PATH_NOT_FOLLOWED

  ready_for_erp_support:
    - FIN_READY_001_FINANCE_REVIEW_COMPLETE
    - FIN_READY_002_EVIDENCE_ACCEPTED
    - FIN_READY_003_ALLOCATION_CONFIRMED
    - FIN_READY_004_CURRENCY_RULE_CONFIRMED

catalog_rule:
- structured code is preferred over free text alone
- free text may supplement but must not replace canonical reason code
- initial implementation may start with this baseline set

