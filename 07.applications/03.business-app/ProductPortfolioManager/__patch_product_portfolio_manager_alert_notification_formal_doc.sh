#!/data/data/com.termux/files/usr/bin/bash
set -eu

BASE="/data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager"

mkdir -p \
  "$BASE/070.operations" \
  "$BASE/080.policy" \
  "$BASE/120.implementation"

cat <<'EOF' > "$BASE/070.operations/0700002_PRODUCT_PORTFOLIO_MANAGER_ALERT_AND_NOTIFICATION_OPERATIONS.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER ALERT AND NOTIFICATION OPERATIONS
# ============================================================

status: canonical
layer: operations
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines operational handling of alerts and notifications
inside ProductPortfolioManager.

operations_principles:
- alerts exist to trigger judgment, not to replace judgment
- notifications exist to improve response timing, not to create hidden decisions
- alert state and notification state must remain distinguishable
- severity, ownership, and due context must remain visible
- notification delivery failure must not erase the underlying alert

# ============================================================
# 1. ALERT OPERATIONAL LIFECYCLE
# ============================================================

alert_lifecycle:
- open
- acknowledged
- resolved
- dismissed

lifecycle_meanings:
  open:
    Alert has been detected and requires attention.
  acknowledged:
    A responsible user has seen the alert and taken ownership or review intent.
  resolved:
    The underlying issue or review obligation is considered handled.
  dismissed:
    The alert is intentionally closed without further action, with reason when policy requires.

# ============================================================
# 2. ALERT SOURCES
# ============================================================

alert_sources:
- sales performance deterioration
- gross profit deterioration
- growth slowdown
- inventory risk
- forecast gap
- review overdue
- proposal overdue
- manager-defined operational checks where policy allows

source_rule:
An alert source must be explainable and attributable.
Opaque or unexplained alert creation is not acceptable.

# ============================================================
# 3. OPERATIONAL HANDLING RULES
# ============================================================

handling_rules:
- high and critical alerts should be visible in dashboard and alert list
- alerts tied to due dates should remain visible until resolved or dismissed
- acknowledged alerts should still remain searchable
- resolved alerts should remain historically traceable
- dismissed alerts should remain auditable where policy requires

# ============================================================
# 4. ASSIGNMENT AND OWNERSHIP
# ============================================================

assignment_rules:
- alerts may be unassigned at detection time
- manager or authorized operator may assign alert ownership
- acknowledged status should normally imply visible owner or actor trace
- reassignment must remain visible in history where operationally important

# ============================================================
# 5. REVIEW CONNECTION RULES
# ============================================================

review_connection_rules:
- alerts may create input for classification review
- alerts may create input for proposal creation
- alerts may create input for review session inclusion
- alert closure should not imply review completion unless explicitly recorded

# ============================================================
# 6. NOTIFICATION OPERATIONAL RULES
# ============================================================

notification_rules:
- notifications should be event-driven from meaningful state changes
- repeated notifications should be rate-controlled to avoid noise
- overdue reminders may repeat according to policy
- notification send status should be observable operationally if the system supports delivery tracking
- delivery failure should not hide the alert itself

# ============================================================
# 7. PRIORITY HANDLING GUIDANCE
# ============================================================

priority_guidance:
  info:
    Visible in detail and searchable list views.
  low:
    Visible in list and detail, normal handling.
  medium:
    Visible in list, detail, and operational summaries.
  high:
    Visible in dashboard, list, and review-oriented surfaces.
  critical:
    Must be strongly surfaced and should be hard to overlook in operational views.

# ============================================================
# 8. OPERATIONAL METRICS
# ============================================================

operational_metrics:
- open alert count
- overdue alert count
- high/critical alert count
- average acknowledge time
- average resolution time
- dismissed alert ratio
- alert-to-review conversion count
- alert-to-proposal conversion count

# ============================================================
# 9. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
Alerts and notifications in ProductPortfolioManager
must support timely judgment operations
without creating hidden automation or bypassing review and approval discipline.
EOF

cat <<'EOF' > "$BASE/080.policy/0800004_PRODUCT_PORTFOLIO_MANAGER_ALERT_AND_NOTIFICATION_POLICY.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER ALERT AND NOTIFICATION POLICY
# ============================================================

status: canonical
layer: policy
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines policy-level rules for when alerts and notifications
should exist, who should see them, and how they should be interpreted.

policy_principles:
- alerts are operational judgment inputs
- notifications are communication aids
- neither alerts nor notifications are formal business decisions
- visibility and authority remain separate concerns

# ============================================================
# 1. ALERT INTERPRETATION POLICY
# ============================================================

alert_interpretation_policy:
- an alert indicates attention need, not a final conclusion
- an alert does not automatically change classification
- an alert does not automatically approve a proposal
- an alert does not automatically close a review obligation

# ============================================================
# 2. ALERT CREATION POLICY
# ============================================================

alert_creation_policy:
- alert conditions should be explicit and explainable
- alert thresholds should be centrally reviewable
- alert creation logic must preserve business meaning consistency across devices and locales
- high-impact alert rules should not be changed casually

# ============================================================
# 3. DISMISSAL POLICY
# ============================================================

dismissal_policy:
- dismissal should be intentional
- dismissal reason may be required for medium/high/critical alerts by policy
- dismissal should remain traceable in history where audit importance exists
- dismissal must not silently hide unresolved structural issues

# ============================================================
# 4. NOTIFICATION RECIPIENT POLICY
# ============================================================

notification_recipient_policy:
- recipients should be determined by role, ownership, assignment, or visibility scope
- users should not receive notifications for entities they are not allowed to view
- notification visibility must not exceed underlying data visibility

# ============================================================
# 5. NOTIFICATION EVENT POLICY
# ============================================================

notification_event_policy:
- alert created
- alert assigned
- alert severity escalated
- proposal due soon or overdue
- review session scheduled
- approval request pending
- approval decision completed
- review overdue

policy_rule:
Notification events must correspond to meaningful workflow states,
not noisy low-value changes.

# ============================================================
# 6. RATE CONTROL POLICY
# ============================================================

rate_control_policy:
- avoid repeated spam for unchanged alert states
- repeated reminders should follow explicit cadence rules
- high/critical alerts may notify more aggressively than low-value events

# ============================================================
# 7. SEPARATION POLICY
# ============================================================

separation_policy:
- notification delivery success does not equal user acknowledgment
- acknowledgment does not equal resolution
- resolution does not equal approval
- dismissal does not equal correctness of underlying business assumption

# ============================================================
# 8. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
Alert and notification policy in ProductPortfolioManager
must preserve clarity, explicitness, bounded visibility,
and separation from final business decision authority.
EOF

cat <<'EOF' > "$BASE/120.implementation/1200006_PRODUCT_PORTFOLIO_MANAGER_ALERT_AND_NOTIFICATION_REQUIREMENTS.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER ALERT AND NOTIFICATION REQUIREMENTS
# ============================================================

status: canonical
layer: implementation
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-level requirements for alert and notification behavior
without entering implementation code.

# ============================================================
# 1. ALERT DISPLAY REQUIREMENTS
# ============================================================

alert_display_requirements:
- alert list screen must exist
- product detail should expose related alerts
- dashboard should expose high-value alert summaries
- severity must be visible by text, not color alone
- alert status must be visible separately from severity

# ============================================================
# 2. ALERT DATA REQUIREMENTS
# ============================================================

required_alert_fields:
- alert_id
- portfolio_item_id
- alert_type_code
- severity_level
- alert_title_key
- alert_message_key
- alert_status
- detected_at
- resolved_at
- assigned_user_id

# ============================================================
# 3. NOTIFICATION EVENT REQUIREMENTS
# ============================================================

notification_event_requirements:
- alert_created
- alert_assigned
- alert_escalated
- proposal_due_soon
- proposal_overdue
- review_session_scheduled
- review_overdue
- approval_request_pending
- approval_decision_recorded

# ============================================================
# 4. USER ACTION REQUIREMENTS
# ============================================================

user_action_requirements:
- acknowledge alert
- resolve alert
- dismiss alert where permitted
- open related product detail
- create proposal from alert context
- add target to review session from alert context

# ============================================================
# 5. TRACEABILITY REQUIREMENTS
# ============================================================

traceability_requirements:
- important alert status changes should be auditable
- assignment changes should be traceable where supported
- notification-triggering workflow events should remain explainable
- alert source context should be inspectable

# ============================================================
# 6. CROSS-CUTTING REQUIREMENTS
# ============================================================

cross_cutting_requirements:
- multilingual-ready text keys for alert titles and messages
- multi-device consistent meaning
- no hidden authority expansion through notification shortcuts
- no assumption that notification delivery equals workflow completion

# ============================================================
# 7. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
ProductPortfolioManager must treat alerts as structured operational signals
and notifications as controlled delivery surfaces for those signals and related workflow events.
EOF

echo "PATCHED: alert and notification formal design docs added"
echo "BASE=$BASE"
echo
find "$BASE/070.operations" -maxdepth 1 -type f | sort
echo
find "$BASE/080.policy" -maxdepth 1 -type f | sort
echo
find "$BASE/120.implementation" -maxdepth 1 -type f | sort
