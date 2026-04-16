#!/data/data/com.termux/files/usr/bin/bash
set -eu

BASE="/data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager"

mkdir -p \
  "$BASE/070.operations" \
  "$BASE/080.policy" \
  "$BASE/100.security" \
  "$BASE/120.implementation"

cat <<'EOF' > "$BASE/070.operations/0700006_PRODUCT_PORTFOLIO_MANAGER_NOTIFICATION_RECIPIENT_MATRIX_OPERATIONS.md"
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
EOF

cat <<'EOF' > "$BASE/080.policy/0800015_PRODUCT_PORTFOLIO_MANAGER_NOTIFICATION_RECIPIENT_MATRIX_POLICY.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER NOTIFICATION RECIPIENT MATRIX POLICY
# ============================================================

status: canonical
layer: policy
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines policy-level rules
for deciding who should receive which notifications.

policy_principles:
- notifications should go only to sufficiently relevant recipients
- notification visibility must not exceed data visibility
- notification delivery must not imply workflow authority
- recipient selection should be explainable from ownership, assignment, role, or responsibility
- high-impact events may justify broader but still bounded recipient scope

# ============================================================
# 1. RECIPIENT POLICY
# ============================================================

recipient_policy:
- assigned user is usually the first candidate
- owner is usually the next candidate when assignment is absent or ownership matters
- responsible manager may be added when timing, severity, or business impact justifies it
- approvers receive approval-needed notifications, not arbitrary workflow events by default
- auditors do not receive broad operational notifications by default unless policy explicitly says so

# ============================================================
# 2. VISIBILITY BOUNDARY POLICY
# ============================================================

visibility_boundary_policy:
- a notification must not expose entity existence or details to users who lack visibility
- share-scope or role restrictions apply before notification delivery
- cross-workspace or cross-company notification is disallowed unless an explicit higher-order policy allows it

# ============================================================
# 3. AUTHORITY SEPARATION POLICY
# ============================================================

authority_separation_policy:
- receiving a notification does not grant edit rights
- receiving a notification does not grant approval rights
- receiving a notification does not grant broader audit visibility
- notification shortcuts must not bypass role and policy checks

# ============================================================
# 4. ESCALATION POLICY
# ============================================================

escalation_policy:
- escalation should depend on severity, overdue state, or high-impact workflow blockage
- escalation should remain bounded and explainable
- escalation should not become mass broadcast behavior without explicit policy

# ============================================================
# 5. DUPLICATION / NOISE POLICY
# ============================================================

duplication_noise_policy:
- duplicate notifications for unchanged state are disfavored
- repeated reminders should follow explicit cadence
- low-value events should prefer narrower or aggregated delivery
- high-value events may justify stronger repetition

# ============================================================
# 6. EVENT-TO-RECIPIENT POLICY SUMMARY
# ============================================================

event_to_recipient_policy_summary:
- alert events -> assignee / owner / manager by severity and responsibility
- proposal events -> owner / manager / review coordinator as relevant
- review events -> participants / creator / responsible manager as relevant
- approval events -> approvers on request creation, creators/owners on decision completion
- high-impact share changes -> owner / manager / oversight only where policy requires

# ============================================================
# 7. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
Notification recipient policy in ProductPortfolioManager
must preserve bounded relevance,
visibility safety,
and clear separation from workflow authority.
EOF

cat <<'EOF' > "$BASE/100.security/1000005_PRODUCT_PORTFOLIO_MANAGER_NOTIFICATION_RECIPIENT_SECURITY.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER NOTIFICATION RECIPIENT SECURITY
# ============================================================

status: canonical
layer: security
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines security constraints for recipient resolution and delivery safety
in ProductPortfolioManager notifications.

security_principles:
- notification delivery must be visibility-safe
- recipient resolution must fail closed when visibility is ambiguous
- shortcuts from notifications must still enforce authorization
- notifications must not leak hidden entity content

# ============================================================
# 1. SECURITY CHECK ORDER
# ============================================================

security_check_order:
1. authenticate actor/event origin
2. resolve candidate recipients
3. check role and visibility eligibility
4. remove ineligible recipients
5. build bounded notification payload
6. deliver according to channel policy

# ============================================================
# 2. SECURITY RULES
# ============================================================

security_rules:
- never notify a recipient about an entity they cannot view
- high-level summaries may still be too revealing if entity existence itself is sensitive
- notification deep links must re-check authorization
- revoked visibility should remove future recipient eligibility
- ambiguous scope should result in narrower delivery, not broader delivery

# ============================================================
# 3. PAYLOAD EXPOSURE RULES
# ============================================================

payload_exposure_rules:
- low-visibility recipients should receive only policy-safe summaries
- full-detail notification payloads should be reserved for fully eligible recipients
- identifiers and titles should not leak hidden sensitive content to ineligible users

# ============================================================
# 4. SECURITY-RELEVANT EVENTS
# ============================================================

security_relevant_events:
- high-impact visibility expansion notifications
- approval-request notifications
- approval-decision notifications
- escalated high/critical alert notifications

# ============================================================
# 5. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
Notification recipient security in ProductPortfolioManager
must ensure that relevance and delivery convenience
never override visibility and authorization boundaries.
EOF

cat <<'EOF' > "$BASE/120.implementation/1200021_PRODUCT_PORTFOLIO_MANAGER_NOTIFICATION_RECIPIENT_MATRIX_REQUIREMENTS.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER NOTIFICATION RECIPIENT MATRIX REQUIREMENTS
# ============================================================

status: canonical
layer: implementation
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-level requirements
for notification recipient resolution
without entering implementation code.

# ============================================================
# 1. REQUIRED RESOLUTION INPUTS
# ============================================================

required_resolution_inputs:
- event_type
- event_severity_where_applicable
- target_entity_type
- target_entity_id
- assigned_user_id_where_applicable
- owner_user_id_where_applicable
- manager_scope_context_where_applicable
- approver_scope_context_where_applicable
- visibility/share-scope context
- company/workspace context

# ============================================================
# 2. REQUIRED RECIPIENT RULE CAPABILITIES
# ============================================================

required_recipient_rule_capabilities:
- resolve assigned-user recipient
- resolve owner recipient
- resolve responsible-manager recipient
- resolve approver recipient
- support secondary-recipient rules by policy
- suppress ineligible recipients by visibility/role checks

# ============================================================
# 3. REQUIRED EVENT COVERAGE
# ============================================================

required_event_coverage:
- alert_created
- alert_assigned
- alert_escalated
- proposal_submitted
- proposal_due_soon
- proposal_overdue
- review_session_scheduled
- review_overdue
- approval_request_created
- approval_decision_recorded
- high-impact share expansion where policy requires

# ============================================================
# 4. REQUIRED EXPLANATION CAPABILITIES
# ============================================================

required_explanation_capabilities:
- notification rules should be explainable to operators or administrators
- labels and event names must be localization-ready
- system should preserve reasoning context sufficient for operational inspection where supported
- escalation should be distinguishable from base delivery

# ============================================================
# 5. REQUIRED SAFETY CAPABILITIES
# ============================================================

required_safety_capabilities:
- re-check visibility before delivery
- re-check authorization when following notification deep links
- suppress duplicate notifications for unchanged state where supported
- avoid treating delivery success as user acknowledgment
- avoid treating user acknowledgment as resolution

# ============================================================
# 6. CROSS-CUTTING REQUIREMENTS
# ============================================================

cross_cutting_requirements:
- multilingual-ready notification labels
- cross-device consistent meaning
- no hidden authority changes through notification actions
- no visibility leakage through recipient expansion
- no mass-broadcast assumption for high-impact events

# ============================================================
# 7. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
ProductPortfolioManager must implement notification recipient resolution
as a bounded, explainable, policy-driven process
grounded in ownership, assignment, severity, and visibility.
EOF

echo "PATCHED: notification recipient matrix formal design docs added"
echo "BASE=$BASE"
echo
find "$BASE/070.operations" -maxdepth 1 -type f | sort
echo
find "$BASE/080.policy" -maxdepth 1 -type f | sort
echo
find "$BASE/100.security" -maxdepth 1 -type f | sort
echo
find "$BASE/120.implementation" -maxdepth 1 -type f | sort
