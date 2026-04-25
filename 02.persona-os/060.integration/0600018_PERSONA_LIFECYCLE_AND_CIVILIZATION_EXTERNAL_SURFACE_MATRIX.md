# PERSONA LIFECYCLE AND CIVILIZATION EXTERNAL SURFACE MATRIX

status: design-freeze-ready
system: PersonaOS
layer: integration
confirmed_at: 20260418_140508

purpose:
Fixes external and inter-system surface rules for lifecycle and civilization integration functions.

allowed_surface:
- persona-create through authorized lifecycle entry path
- persona-event-history through authorized retrieval surface
- civilization-event-producer through controlled event production path
- event-validate through contract validation surface
- civilization-event-dispatcher through controlled internal delivery path
- civilization-dead-notify through failure reporting surface
- external_dispatcher through controlled outward integration path

forbidden_surface:
- direct mutable truth read through producer or dispatcher
- direct mutable truth update through event-validate
- direct mutable truth update through dead notification
- unauthorized history exposure
- unvalidated dispatch into PersonaOS truth boundary

surface_rules:
- persona-create may initiate Persona lifecycle through approved path only
- persona-event-history remains retrieval-oriented and must not mutate truth
- event-validate may inspect contract and payload shape but must not mutate truth
- dispatcher functions may route events but must not own truth mutation
- external_dispatcher must remain a dispatch boundary, not a truth boundary

