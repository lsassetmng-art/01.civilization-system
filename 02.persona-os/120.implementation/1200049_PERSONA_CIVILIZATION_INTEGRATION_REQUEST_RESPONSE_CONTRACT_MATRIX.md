# PERSONA CIVILIZATION INTEGRATION REQUEST RESPONSE CONTRACT MATRIX

status: design-freeze-ready
system: PersonaOS
layer: implementation
confirmed_at: 20260418_140508

purpose:
Fixes request and response contracts for civilization integration family members.

civilization_event_producer_request:
  required_fields:
    - event_type
    - event_payload
    - produced_by
  optional_fields:
    - correlation_id
    - target_mode
    - event_version

civilization_event_producer_response:
  required_fields:
    - production_status
    - event_reference
    - produced_at

event_validate_request:
  required_fields:
    - event_type
    - event_payload
  optional_fields:
    - event_version
    - validation_context

event_validate_response:
  required_fields:
    - validation_status
    - validation_code_or_reference
    - validated_at

civilization_event_dispatcher_request:
  required_fields:
    - event_reference or event_payload
    - dispatch_target
    - dispatched_by
  optional_fields:
    - retry_context
    - correlation_id

civilization_event_dispatcher_response:
  required_fields:
    - dispatch_status
    - dispatch_reference
    - dispatched_at

civilization_dead_notify_request:
  required_fields:
    - failed_event_reference
    - failure_reason
  optional_fields:
    - failure_context
    - retry_state

civilization_dead_notify_response:
  required_fields:
    - notification_status
    - notified_at

external_dispatcher_request:
  required_fields:
    - dispatch_reference or event_reference
    - external_target
    - dispatched_by
  optional_fields:
    - contract_context
    - retry_context

external_dispatcher_response:
  required_fields:
    - dispatch_status
    - external_dispatch_reference
    - dispatched_at

contract_rules:
- production, validation, dispatch, dead notification, and external dispatch responses must remain role-distinct
- validation response must not masquerade as dispatch success
- dead notification response must not masquerade as retry success

