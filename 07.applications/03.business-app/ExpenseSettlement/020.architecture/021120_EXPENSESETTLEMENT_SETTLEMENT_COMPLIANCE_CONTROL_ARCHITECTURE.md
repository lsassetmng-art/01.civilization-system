# ============================================================
# EXPENSESETTLEMENT SETTLEMENT COMPLIANCE CONTROL ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
system: applications
application: ExpenseSettlement
directory: 020.architecture
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: settlement-compliance-control-architecture

purpose:
Makes settlement lifecycle and compliance control explicit in the
current ExpenseSettlement architecture.

architecture_intent:
- expense work must be visible not only as claims, but as settlement movement
- policy compliance, approval, payout readiness, and ERP handoff must remain explicit
- settlement readiness and blocker visibility must be queryable without
  reconstructing everything from raw claim detail only

flow_layers:
- claim intake:
  - claim draft creation
  - receipt and evidence registration
  - policy precheck
  - submission
- settlement control:
  - approval requirement detection
  - policy compliance review
  - payout preparation
  - exception routing
- operational review:
  - expense cockpit review
  - receipt exception visibility
  - compliance blocker visibility
  - ERP handoff readiness
- control action:
  - approve
  - hold
  - escalate
  - release for payout
- closure:
  - approved
  - paid
  - rejected
  - handed_off
  - cancelled

key_separations:
- raw expense detail is not the same as settlement readiness
- approval history is not the same as active compliance hold
- payout preparation is not the same as ERP handoff completion
- cockpit review is not the same as detailed claim editing screen

recommended_runtime_objects:
- expense_settlement_signal
- receipt_policy_exception_review_item
- erp_handoff_readiness_item
- expense_cockpit_summary
