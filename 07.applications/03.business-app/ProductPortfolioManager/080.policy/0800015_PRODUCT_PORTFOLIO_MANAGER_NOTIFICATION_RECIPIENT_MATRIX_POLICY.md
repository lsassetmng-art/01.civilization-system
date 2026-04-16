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
