# PERSONA APPROVAL PUBLISH TIER B EXACT STATUS AND DECISION MATRIX

status: tier-b-exactness-ready
system: PersonaOS
layer: implementation
confirmed_at: 20260418_182500

purpose:
Fixes exact status and decision semantics for approval and publish family behavior.

approval_create_statuses:
- approval_created
- approval_rejected
- approval_failed

approval_action_decision_statuses:
- decision_approved
- decision_rejected
- decision_returned_for_revision
- decision_failed

approval_sla_statuses:
- sla_healthy
- sla_warning
- sla_breached
- sla_unavailable

publish_request_create_statuses:
- publish_request_created
- publish_request_rejected
- publish_request_failed

publish_request_decide_statuses:
- publish_decision_approved
- publish_decision_rejected
- publish_decision_returned_for_revision
- publish_decision_failed

publish_apply_statuses:
- publish_apply_succeeded
- publish_apply_rejected
- publish_apply_failed

publish_list_statuses:
- listing_available
- listing_empty
- listing_failed

status_rules:
- approval decision states must remain distinct from publish decision states
- publish_apply_succeeded must remain distinct from publish_decision_approved
- listing_available must remain downstream from publish_apply_succeeded
- returned_for_revision must remain distinct from rejected
- failed remains operational failure, not governance rejection

