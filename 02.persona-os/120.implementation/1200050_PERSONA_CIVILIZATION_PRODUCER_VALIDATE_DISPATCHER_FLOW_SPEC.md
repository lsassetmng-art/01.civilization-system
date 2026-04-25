# PERSONA CIVILIZATION PRODUCER VALIDATE DISPATCHER FLOW SPEC

status: design-freeze-ready
system: PersonaOS
layer: implementation
confirmed_at: 20260418_140508

purpose:
Fixes the stage flow across civilization integration functions.

primary_flow:
1. civilization-event-producer
2. sign-event where policy requires signed events
3. event-validate
4. civilization-event-dispatcher
5. persona-state-apply or equivalent runtime engine edge
6. snapshot-issue where release policy requires

flow_rules:
- production must happen before validation result is consumed
- validation must succeed before dispatcher hands event to runtime engine path
- dispatcher routes, it does not own truth mutation
- runtime engine path may hand off to snapshot issue after apply logic
- dead notification exists for controlled failure cases, not as normal success path

boundary_rules:
- event-validate is the contract gate
- civilization-event-dispatcher is the route gate
- persona-state-apply remains the runtime-engine edge
- state_apply behind it remains the canonical truth mutation boundary

