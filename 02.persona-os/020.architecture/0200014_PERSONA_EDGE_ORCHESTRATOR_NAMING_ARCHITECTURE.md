# PERSONA EDGE ORCHESTRATOR NAMING ARCHITECTURE

status: confirmed
system: PersonaOS
layer: architecture
confirmed_at: 20260418_112951

purpose:
Fixes the canonical reading of the first-wave edge_apply documents.

decision:
The first-wave document family currently labeled edge_apply is not the whole Edge layer.
It is also not the canonical truth mutation owner.
It should be read as an Edge family orchestrator.

canonical_role_name:
- edge_apply_orchestrator

accepted_aliases:
- persona_state_apply_dispatcher_edge
- intake_to_apply_dispatcher
- event_intake_orchestrator_edge

boundary_split:
- edge_apply_orchestrator = intake, control gate, idempotency, registry lookup, handoff build, result mapping, retry/dead-letter routing, audit support
- state_apply = canonical mutable truth mutation boundary
- snapshot_issue = immutable release artifact boundary
- signature and revocation = trust boundary

non_destructive_rule:
PersonaOS may keep existing file names for continuity, while the canonical interpretation
is fixed at the architecture layer.

