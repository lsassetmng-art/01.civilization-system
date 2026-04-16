# ============================================================
# PRODUCT PORTFOLIO MANAGER NOTIFICATION RECIPIENT MATRIX OPERATIONS
# ============================================================

status: canonical
layer: operations
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines operational recipient-resolution rules
for notifications inside ProductPortfolioManager.

operations_principles:
- notifications exist to improve response timing
- recipients must be explainable
- notification delivery scope must remain bounded
- visibility and authority must not be confused
- repeated notification noise must be controlled
- delivery failure must not erase the underlying workflow state

# ============================================================
# 1. RECIPIENT RESOLUTION PRIORITY
# ============================================================

recipient_resolution_priority:
1. explicitly assigned user
2. entity owner
3. responsible manager by scope
4. approver(s) for approval-needed events
5. operational watchers or auditors only where policy explicitly allows

resolution_rule:
The narrowest sufficient recipient set is preferred.

# ============================================================
# 2. EVENT FAMILIES
# ============================================================

event_families:
- alert events
- proposal events
- review session events
- approval events
- share-scope events
- overdue/reminder events

# ============================================================
# 3. OPERATIONAL RECIPIENT MATRIX
# ============================================================

operational_recipient_matrix:

  alert_created:
    primary_recipients:
      - assigned_user_if_present
      - product_owner_if_present
      - responsible_manager_if_no_clear_owner
    secondary_recipients:
      - review_coordinator_when_policy_requires
    notes:
      - high/critical severity may notify manager sooner
      - low/info severity should remain narrower by default

  alert_assigned:
    primary_recipients:
      - newly_assigned_user
    secondary_recipients:
      - previous_assigned_user_if_policy_requires
      - manager_if_high_impact
    notes:
      - assignment notification should not broadcast widely

  alert_escalated:
    primary_recipients:
      - assigned_user_if_present
      - responsible_manager
    secondary_recipients:
      - operational_overseer_if_policy_requires
    notes:
      - escalation implies stronger recipient inclusion than initial low-severity alert

  proposal_submitted:
    primary_recipients:
      - proposal_owner_if_present
      - responsible_manager
    secondary_recipients:
      - review_coordinator_if_review_driven
    notes:
      - submitter does not need duplicate notification by default unless UX policy wants confirmation

  proposal_due_soon:
    primary_recipients:
      - proposal_owner_if_present
    secondary_recipients:
      - responsible_manager_if_high_priority
    notes:
      - reminder cadence should remain bounded

  proposal_overdue:
    primary_recipients:
      - proposal_owner_if_present
      - responsible_manager
    secondary_recipients:
      - review_coordinator_if_tied_to_review_commitment
    notes:
      - overdue is stronger than due_soon

  review_session_scheduled:
    primary_recipients:
      - review_participants
      - review_creator
    secondary_recipients:
      - managers_of_required_targets_if_policy_requires
    notes:
      - participants should be explicit

  review_overdue:
    primary_recipients:
      - review_owner_or_creator
      - responsible_manager
    secondary_recipients:
      - approver_if_blocking_high_impact_flow
    notes:
      - only when overdue meaning is explicit

  approval_request_created:
    primary_recipients:
      - target_approvers
    secondary_recipients:
      - request_creator_confirmation_if_policy_or_ux_requires
    notes:
      - do not notify users who cannot view the target

  approval_decision_recorded:
    primary_recipients:
      - request_creator
      - target_owner_if_different
      - responsible_manager_if_high_impact
    secondary_recipients:
      - affected_assignee_if_outcome_changes execution expectation
    notes:
      - rejection/sent_back should reach actors who must respond

  share_scope_expanded_high_impact:
    primary_recipients:
      - entity_owner
      - responsible_manager
    secondary_recipients:
      - auditor_or_security_oversight_if_policy_requires
    notes:
      - only for meaningful visibility expansion events

# ============================================================
# 4. ESCALATION OPERATIONS
# ============================================================

escalation_operations:
- info/low events should normally remain narrow
- medium events may add responsible manager depending on business impact
- high/critical events may include responsible manager immediately
- repeated unhandled overdue events may escalate one level higher by policy

# ============================================================
# 5. RATE CONTROL OPERATIONS
# ============================================================

rate_control_operations:
- suppress duplicate notifications for unchanged state
- prefer aggregation where many similar low-value events occur
- allow stronger repetition only for overdue, high, or critical situations
- keep repeated reminders policy-driven and explainable

# ============================================================
# 6. OPERATIONS METRICS
# ============================================================

operations_metrics:
- notifications sent by event family
- delivery attempts by severity
- duplicate-suppression count
- escalation-trigger count
- overdue reminder count
- average notification-to-acknowledge lag where measurable

# ============================================================
# 7. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
Notification recipient operations in ProductPortfolioManager
must remain narrow, explainable, severity-aware,
and connected to real workflow responsibility.
