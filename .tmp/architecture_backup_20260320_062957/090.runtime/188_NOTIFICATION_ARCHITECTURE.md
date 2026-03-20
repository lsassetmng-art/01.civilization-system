# ============================================================
# NOTIFICATION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Notification runtime delivers surfaced information to actors
after explicit event processing.

notification_types:
- informational
- action_required
- warning
- critical

sources:
- published_exam_result
- employment_result
- legal_notice
- war_impact
- company_distress
- security_incident
- time_sensitive_decision

rules:
- notifications are downstream products of explicit events
- notification delivery must not silently mutate domain state
- critical notifications must remain traceable

final_rule:
Runtime notifications may surface event consequences,
but must never replace the event model.
