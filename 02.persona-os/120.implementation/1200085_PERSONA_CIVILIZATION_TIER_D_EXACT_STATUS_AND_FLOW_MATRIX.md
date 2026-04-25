# PERSONA CIVILIZATION TIER D EXACT STATUS AND FLOW MATRIX

status: tier-d-exactness-ready
system: PersonaOS
layer: implementation
confirmed_at: 20260418_183303

purpose:
Fixes exact status and flow semantics for civilization integration family behavior.

producer_statuses:
- production_succeeded
- production_rejected
- production_failed

validation_statuses:
- validation_passed
- validation_rejected
- validation_failed

dispatcher_statuses:
- dispatch_succeeded
- dispatch_rejected
- dispatch_retrying
- dispatch_failed

dead_notify_statuses:
- dead_notified
- dead_notify_rejected
- dead_notify_failed

external_dispatcher_statuses:
- external_dispatch_succeeded
- external_dispatch_rejected
- external_dispatch_retrying
- external_dispatch_failed

flow_rules:
- production_succeeded may feed validation
- validation_passed may feed dispatcher
- validation_rejected must not feed runtime engine path
- dispatch_succeeded may feed persona-state-apply path
- dispatch_retrying remains distinct from dead_notified
- dead_notified remains downstream from controlled failure path
- external_dispatch_succeeded remains outbound routing success only

status_rules:
- rejected remains contract or policy decision outcome
- failed remains operational outcome
- retrying remains distinct from failed
- dead_notified remains distinct from dispatch_failed

