# PERSONA LIFECYCLE CREATE AND HISTORY BOUNDARY SPEC

status: design-freeze-ready
system: PersonaOS
layer: implementation
confirmed_at: 20260418_140508

purpose:
Fixes the boundary split between lifecycle entry and lifecycle history retrieval.

persona_create_boundary:
- initiates persona lifecycle through approved PersonaOS path
- may create root lifecycle records through authorized boundary
- does not replace runtime engine, snapshot issue, or trust boundaries

persona_event_history_boundary:
- reads history surface only
- may aggregate history-oriented views or event references
- must not mutate PersonaOS truth
- must respect authorization and visibility policy

hard_rules:
- creation and history are distinct boundaries
- history retrieval must not become a backdoor mutable truth surface
- creation path must not bypass PersonaOS lifecycle rules

