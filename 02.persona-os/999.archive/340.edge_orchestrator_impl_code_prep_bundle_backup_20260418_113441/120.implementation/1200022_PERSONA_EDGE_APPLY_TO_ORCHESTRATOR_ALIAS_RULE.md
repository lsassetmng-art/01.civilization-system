# PERSONA EDGE APPLY TO ORCHESTRATOR ALIAS RULE

status: confirmed
system: PersonaOS
layer: implementation
confirmed_at: 20260418_112951

purpose:
Defines how existing edge_apply implementation docs must be read during first-wave implementation.

alias_rule:
Whenever a first-wave implementation document says edge_apply, read it as:
- edge_apply_orchestrator

implementation_meaning:
- request intake and parsing
- validation ordering
- dedupe and replay guard
- canonical apply payload construction
- state_apply invocation boundary handoff
- terminal result mapping
- retry or dead-letter routing
- audit evidence support

forbidden_misread:
Do not interpret edge_apply documents as:
- the only Edge of PersonaOS
- the truth mutation owner
- a direct external mutable truth surface

future_rename_rule:
A later non-functional rename pass may rename files physically, but implementation work
should proceed using the alias immediately.

