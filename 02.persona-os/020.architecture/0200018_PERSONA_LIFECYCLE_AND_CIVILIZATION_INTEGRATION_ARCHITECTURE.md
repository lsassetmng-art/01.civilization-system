# PERSONA LIFECYCLE AND CIVILIZATION INTEGRATION ARCHITECTURE

status: design-freeze-ready
system: PersonaOS
layer: architecture
confirmed_at: 20260418_140508

purpose:
Fixes the architecture of lifecycle functions and civilization integration functions inside PersonaOS.

lifecycle_family_members:
- persona-create
- persona-event-history

civilization_integration_family_members:
- civilization-event-producer
- event-validate
- civilization-event-dispatcher
- civilization-dead-notify
- external_dispatcher

lifecycle_architecture:
- persona-create = Persona lifecycle entry boundary
- persona-event-history = Persona event-history retrieval boundary

civilization_integration_architecture:
- civilization-event-producer = event production boundary
- event-validate = contract validation boundary
- civilization-event-dispatcher = internal delivery orchestration boundary
- civilization-dead-notify = failed-delivery notification boundary
- external_dispatcher = external delivery orchestration boundary

critical_split:
- lifecycle entry is not the same as runtime engine orchestration
- event production is not the same as validation
- validation is not the same as dispatch
- dispatch failure notification is not the same as canonical truth mutation
- external_dispatcher is not mutable truth owner

reference_chain:
civilization-event-producer
-> sign-event where policy requires
-> event-validate
-> civilization-event-dispatcher
-> persona-state-apply runtime engine edge
-> snapshot-issue where release policy requires
-> civilization-dead-notify on controlled failure path

hard_rules:
- canonical mutable truth remains behind PersonaOS truth boundary
- lifecycle and civilization integration functions do not become truth owners merely by carrying event traffic
- validation and dispatch remain distinguishable boundaries

