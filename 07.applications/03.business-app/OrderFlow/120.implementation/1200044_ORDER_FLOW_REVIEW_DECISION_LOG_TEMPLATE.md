# ============================================================
# ORDER FLOW REVIEW DECISION LOG TEMPLATE
# ============================================================

status: template
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Template for recording decision outcomes for review findings.

review_decision_log:

  - decision_id: OF-DEC-001
    source_finding:
      - TBD
    reviewer:
      - Sato
    decision:
      - pending
    decision_reason:
      - TBD
    affected_area:
      - TBD
    followup_required:
      - TBD
    note:
      - TBD

decision_allowed_values:
- accepted
- partially_accepted
- rejected
- deferred

decision_rules:
- every major review finding should have a decision
- deferred items should point to a future action
- rejected findings should carry a reason

