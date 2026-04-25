# PERSONA CIVILIZATION SUPPORT DEAD NOTIFY AND FAILURE SIGNAL SUMMARY

status: final-bundle-baseline
system: PersonaOS
layer: implementation
confirmed_at: 20260419_064139

purpose:
Condenses failure signaling semantics inside the civilization support bundle.

function:
- civilization-dead-notify

civilization-dead-notify role:
- controlled failure notification only
- not retry execution owner
- not dispatch owner
- not mutable truth owner

request_required_fields:
- failed_event_reference
- failure_reason

request_optional_fields:
- failure_context
- retry_state
- dead_trace_id

response_required_fields:
- notification_status
- notified_at

status_family:
- dead_notified
- dead_notify_rejected
- dead_notify_failed

status_rules:
- dead_notified means failure signal has been recorded or emitted through policy-safe path
- dead_notify_rejected means notification attempt was blocked by authority or policy
- dead_notify_failed means operational failure prevented notification
- dead_notify_rejected must remain distinct from dead_notify_failed

downstream relation:
- retry exhaustion from civilization-event-dispatcher may feed civilization-dead-notify
- validation_rejected may short-circuit before runtime handoff and may or may not feed dead path depending on policy
- dead notification must preserve original failure class context

hard rules:
- dead notification is not retry logic
- dead notification is not runtime truth mutation
- dead notification must not hide original failure type
