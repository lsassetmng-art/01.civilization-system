# ============================================================
# EXPENSE MINIMUM NEXT ROUND REQUEST NOTE
# ============================================================

status: canonical
layer: meta
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

purpose:
Provides the minimum safe request shape for starting a future
ExpenseSettlement continuation round.

minimum_request_shape:
- confirm that broad concept should remain closed
- name exactly one narrow bundle to continue
- state whether the task is:
  - parameter tuning
  - consolidation
  - implementation-readiness review only if explicit

recommended_minimum_request_examples:
- Continue ExpenseSettlement and fix only the exact localized label catalog.
- Continue ExpenseSettlement and fix only the export masking matrix.
- Continue ExpenseSettlement and do only safe consolidation of summary docs.
- Continue ExpenseSettlement and review only implementation-readiness, not implementation itself.

minimum_request_rule:
A narrow request is preferred over a broad “continue everything” request
after the current round freeze-candidate stage.

