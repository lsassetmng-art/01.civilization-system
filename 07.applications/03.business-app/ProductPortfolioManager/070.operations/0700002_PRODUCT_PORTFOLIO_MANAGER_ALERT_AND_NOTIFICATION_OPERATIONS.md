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
