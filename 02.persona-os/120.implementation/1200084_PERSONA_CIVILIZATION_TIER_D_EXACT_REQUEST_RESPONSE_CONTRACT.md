# PERSONA CIVILIZATION TIER D EXACT REQUEST RESPONSE CONTRACT

status: tier-d-exactness-ready
system: PersonaOS
layer: implementation
confirmed_at: 20260418_183303

purpose:
Fixes the exact request and response contract for civilization integration family members.

civilization_event_producer_request_required_fields:
- event_type
- event_payload
- produced_by

civilization_event_producer_request_optional_fields:
- correlation_id
- target_mode
- event_version
- production_context

civilization_event_producer_response_required_fields:
- production_status
- event_reference
- produced_at

event_validate_request_required_fields:
- event_type
- event_payload

event_validate_request_optional_fields:
- event_version
- validation_context
- contract_reference

event_validate_response_required_fields:
- validation_status
- validation_code_or_reference
- validated_at

civilization_event_dispatcher_request_required_fields:
- event_reference_or_payload
- dispatch_target
- dispatched_by

civilization_event_dispatcher_request_optional_fields:
- retry_context
- correlation_id
- dispatch_trace_id

civilization_event_dispatcher_response_required_fields:
- dispatch_status
- dispatch_reference
- dispatched_at

civilization_dead_notify_request_required_fields:
- failed_event_reference
- failure_reason

civilization_dead_notify_request_optional_fields:
- failure_context
- retry_state
- dead_trace_id

civilization_dead_notify_response_required_fields:
- notification_status
- notified_at

external_dispatcher_request_required_fields:
- dispatch_reference_or_event_reference
- external_target
- dispatched_by

external_dispatcher_request_optional_fields:
- contract_context
- retry_context
- external_dispatch_trace_id

external_dispatcher_response_required_fields:
- dispatch_status
- external_dispatch_reference
- dispatched_at

contract_rules:
- producer, validate, dispatch, dead-notify, and external dispatch remain role-distinct
- validate response must not masquerade as dispatch success
- dead notification response must not masquerade as retry success
- external dispatch response must not imply mutable truth mutation

