# PERSONA CIVILIZATION TIER D VALIDATE DISPATCH NOTIFY BOUNDARY SPEC

status: tier-d-exactness-ready
system: PersonaOS
layer: implementation
confirmed_at: 20260418_183303

purpose:
Fixes exact boundary ownership across civilization integration family members.

boundary_split:
- civilization-event-producer = event production boundary
- event-validate = contract validation boundary
- civilization-event-dispatcher = internal routing boundary
- civilization-dead-notify = controlled failure notification boundary
- external_dispatcher = outward routing boundary

hard_boundary_rules:
- producer is not validator
- validator is not dispatcher
- dispatcher is not canonical truth owner
- dead notification is not retry engine owner by itself
- external dispatcher is not external truth replication owner by default

runtime_handoff_rule:
- civilization-event-dispatcher may hand off to persona-state-apply
- persona-state-apply remains the concrete runtime-engine edge name
- state_apply or equivalent boundary behind it remains the canonical mutable truth mutation boundary

external_surface_rule:
- event-validate may expose validation result only
- external_dispatcher may expose routing result only
- neither may expose mutable truth directly

