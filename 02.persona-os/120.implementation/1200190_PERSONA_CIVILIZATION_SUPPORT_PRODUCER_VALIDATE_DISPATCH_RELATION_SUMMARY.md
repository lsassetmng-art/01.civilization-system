# PERSONA CIVILIZATION SUPPORT PRODUCER VALIDATE DISPATCH RELATION SUMMARY

status: final-bundle-baseline
system: PersonaOS
layer: implementation
confirmed_at: 20260419_064139

purpose:
Condenses event production and validation semantics, and their relation to internal dispatch.

functions:
- civilization-event-producer
- event-validate

producer role:
- event production only
- not validation owner
- not dispatch owner
- not mutable truth owner

producer request core:
- event_type
- event_payload
- produced_by
- correlation_id optional
- target_mode optional
- event_version optional
- production_context optional

producer response core:
- production_status
- event_reference
- produced_at

producer status family:
- production_succeeded
- production_rejected
- production_failed

validation role:
- contract validation only
- not producer owner
- not dispatch owner
- not mutable truth owner

validation request core:
- event_type
- event_payload
- event_version optional
- validation_context optional
- contract_reference optional

validation response core:
- validation_status
- validation_code_or_reference
- validated_at

validation status family:
- validation_passed
- validation_rejected
- validation_failed

flow backbone:
civilization-event-producer
-> sign-event where policy requires
-> event-validate
-> civilization-event-dispatcher
-> persona-state-apply
-> state_apply or equivalent truth boundary

flow rules:
- production_succeeded may feed validation
- validation_passed may feed dispatcher
- validation_rejected must not feed runtime handoff
- producer and validator stay role-distinct end to end
