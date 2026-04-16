# ============================================================
# EXPENSE SETTLEMENT CONFIRMATION SOURCE BASELINE
# ============================================================

status: canonical
layer: policy
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

purpose:
Defines the initial settlement-confirmation source baseline
for implementation-start readiness.

source_catalog:

  employee_reimbursement:
    pending_entry_source:
      - erp_confirmed
      - payment_process_started
    settled_source:
      - reimbursement_completion_confirmed

  corporate_card_completion:
    pending_entry_source:
      - erp_confirmed
      - corporate_card_resolution_started
    settled_source:
      - corporate_card_resolution_confirmed

  advance_settlement_completion:
    pending_entry_source:
      - finance_reconciliation_started
    settled_source:
      - advance_balance_fully_resolved

source_rule:
- settlement confirmation source must be explicit
- settlement source remains separate from approval and ERP state
- initial implementation may begin with this baseline catalog

