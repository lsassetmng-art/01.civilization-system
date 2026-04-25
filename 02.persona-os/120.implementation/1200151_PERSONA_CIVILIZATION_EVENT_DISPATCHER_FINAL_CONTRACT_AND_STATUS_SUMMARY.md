# PERSONA CIVILIZATION EVENT DISPATCHER FINAL CONTRACT AND STATUS SUMMARY

status: final-targeted-baseline
system: PersonaOS
layer: implementation
confirmed_at: 20260418_211826

purpose:
Condenses the final request, response, and status interpretation for civilization-event-dispatcher.

request_required_fields:
- event_reference_or_payload
- dispatch_target
- dispatched_by

request_optional_fields:
- retry_context
- correlation_id
- dispatch_trace_id

request_core_rules:
- dispatch_target must remain explicit
- event_reference_or_payload must already be production-safe and validation-safe for runtime handoff
- dispatched_by must represent routing authority in policy terms
- retry_context may shape retry behavior but does not replace retry budget classification

response_required_fields:
- dispatch_status
- dispatch_reference
- dispatched_at

status_family:
- dispatch_succeeded
- dispatch_rejected
- dispatch_retrying
- dispatch_failed
- dispatch_exhausted

status_rules:
- dispatch_succeeded means routing handoff completed
- dispatch_rejected means policy or contract gate prevented routing
- dispatch_retrying means bounded retry path is active
- dispatch_failed means operational routing failure without successful completion
- dispatch_exhausted means retry budget is spent and explicit exhaustion outcome must follow
- dispatch_rejected must remain distinct from dispatch_failed
- dispatch_retrying must remain distinct from dispatch_failed
- dispatch_exhausted must remain distinct from dispatch_failed

external_response_rule:
civilization-event-dispatcher may expose routing-safe result fields only.
It must not expose mutable truth payloads or pretend that routing success equals truth mutation success.

