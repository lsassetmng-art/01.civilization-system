# ============================================================
# ORDER FLOW OPERATOR ACTION MATRIX CLOSURE AND ERRORS
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines operator actions for history, closure,
and error/sync handling interpretation.

operator_action_matrix:

  order_history_screen:
    primary_goal:
      - understand what happened to the order over time
    read:
      - timeline entries
      - actor display name
      - related event summary
    write:
      - none
    actions:
      - open_related_detail
    success_result:
      - operator understands chronology and context
    blocked_when:
      - order not found

  order_closure_screen:
    primary_goal:
      - perform explicit operational completion judgment
    read:
      - order summary
      - delivery summary
      - remaining quantity summary
      - unresolved issue summary
      - close readiness explanation
    write:
      - closure reason type
      - closure note
    actions:
      - close_order
      - stop_closure
    success_result:
      - order reaches closed
    blocked_when:
      - unresolved remaining scope without explicit business rule
      - missing closure reason where required
      - order already closed

  sync_failure_interpretation:
    primary_goal:
      - distinguish local save success from external sync failure
    read:
      - sync state type
      - target system name
      - last error code
    write:
      - retry intent note if supported later
    actions:
      - acknowledge_failure
      - retry_sync
    success_result:
      - operator understands record is locally saved but externally unsynced
    blocked_when:
      - no sync-visible record exists

  validation_error_interpretation:
    primary_goal:
      - correct invalid operator input
    read:
      - field error list
      - message
    write:
      - corrected field values
    actions:
      - fix_and_resubmit
      - cancel_operation
    success_result:
      - request becomes valid
    blocked_when:
      - field constraints still violated

design_rules:
  - closure is explicit and judgment-heavy
  - history is read-heavy
  - sync error does not automatically mean business save failure
  - operator must see whether failure is business-side or integration-side

