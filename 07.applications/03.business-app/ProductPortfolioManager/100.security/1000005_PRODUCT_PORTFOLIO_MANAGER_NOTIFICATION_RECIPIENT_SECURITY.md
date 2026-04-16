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
