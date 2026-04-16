# ============================================================
# MBO EXCEPTION OPERATIONS
# ============================================================

status: canonical
application: Mbo
layer: operations
owner: Boss
prepared_by: Zero

purpose:
Defines operational handling for exceptional cases.

exception_cases:
- finalized record requires reopen
- transferred record requires reopen
- ERP rejected payload requires correction
- evaluation confirmed with material error
- failed resend requires escalation
- stale alert persists due to blocked workflow

operation_rules:

  reopen_request_handling:
    - request must be explicitly created
    - request must include reason and scope
    - request must be visible to authorized approvers
    - execution must not happen before approval

  ERP_rejection_handling:
    - ERP rejection must create visible failure state
    - correction path must be tracked
    - resend must not overwrite original failure history

  escalation_handling:
    - unresolved ERP failures must remain visible
    - repeated resend failures should escalate to governed review
    - unresolved reopen requests should remain visible in governed queues

  alert_resolution_exception:
    - alerts linked to blocked governance state remain visible until governed closure
    - dashboard should distinguish ordinary overdue items from governed exceptions

