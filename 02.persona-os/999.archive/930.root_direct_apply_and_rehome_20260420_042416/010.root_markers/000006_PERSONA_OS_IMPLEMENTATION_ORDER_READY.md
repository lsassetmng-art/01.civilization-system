# PERSONA OS IMPLEMENTATION ORDER READY

status: implementation-order-ready
system: PersonaOS
canonical: true
marked_at: 20260417_194050

meaning:
PersonaOS now has an explicit first-wave and second-wave implementation order
for the core 120.implementation documents.

first_wave:
- edge_apply
- state_apply
- builder_api
- builder_storage

second_wave:
- runtime_session
- visual_runtime
- external_release

gate_rule:
No DB-side or app-side implementation should begin until the first-wave
exact payload review is accepted.
