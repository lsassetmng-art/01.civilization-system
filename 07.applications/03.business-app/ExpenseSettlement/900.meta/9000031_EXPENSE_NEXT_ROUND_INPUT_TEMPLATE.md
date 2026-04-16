# ============================================================
# EXPENSE NEXT ROUND INPUT TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

purpose:
Provides a reusable input template for starting the next round of ExpenseSettlement work.

template:

  application: ExpenseSettlement
  current_design_status: canonical design round largely fixed
  reopen_broad_concept: no
  requested_work_mode:
    - parameter_tuning
    - consolidation_review
    - implementation_readiness_review_only_if_explicit

  narrow_focus_candidates:
    - exact localized label catalog
    - exact department/project route matrix
    - exact finance reason code catalog
    - exact evidence mismatch tolerance rules
    - exact export masking matrix
    - exact settlement confirmation source catalog
    - safe summary consolidation

  restart_rule:
    Read 00_EXPENSE_SETTLEMENT_FINAL_INTEGRATED_SUMMARY.md
    and 9000009_EXPENSE_FINAL_HANDOFF_PACKAGE.md first,
    then continue only the selected narrow focus.

