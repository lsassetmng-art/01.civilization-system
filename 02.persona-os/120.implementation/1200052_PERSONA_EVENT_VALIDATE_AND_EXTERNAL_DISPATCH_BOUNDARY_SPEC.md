# PERSONA EVENT VALIDATE AND EXTERNAL DISPATCH BOUNDARY SPEC

status: design-freeze-ready
system: PersonaOS
layer: implementation
confirmed_at: 20260418_140508

purpose:
Fixes the boundary semantics of event-validate and external_dispatcher.

event_validate_boundary:
- validates contract, shape, and allowed event semantics
- may return validation result or failure
- must not mutate canonical truth
- must not be treated as dispatcher or producer

external_dispatcher_boundary:
- dispatches approved or valid external-facing event or artifact references
- may depend on contract context
- must not mutate canonical truth
- must not become verification or release issuer by default

boundary_rules:
- validation and external dispatch remain distinct
- external dispatch occurs only after upstream validation and policy checks
- external dispatch is not a backdoor external truth surface
- external dispatch must respect signed snapshot and contract-only external surface rules

