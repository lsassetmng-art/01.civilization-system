# PERSONA EDGE 29 FUNCTION FAMILY ARCHITECTURE

status: confirmed
system: PersonaOS
layer: architecture
confirmed_at: 20260418_121148

purpose:
Places the confirmed 29 Edge Functions into a single PersonaOS Edge family architecture.

architecture_position:
PersonaOS does not have one monolithic Edge.
It has an Edge family made of lifecycle, runtime, visual, asset, publish, snapshot, key, and integration functions.

family_architecture:
- lifecycle = persona lifecycle entry and history support
- runtime_engine = event-driven runtime orchestration and signature support
- runtime_visual = visual work-state and composition flow
- asset = generated or builder-facing asset helpers
- approval_publish = governance and release preparation
- security_snapshot = immutable release artifact issue, verify, revoke, publish revocation
- security_keys = trust-key management
- integration_civilization = event production, validation, dispatch, dead notification, external dispatch

critical_split:
- persona-state-apply is a concrete existing Edge name
- inside PersonaOS boundary reasoning, it should be read as a runtime engine orchestrator edge
- canonical truth mutation remains inside state_apply or apply_event_engine boundary behind it
- snapshot-issue remains the release artifact boundary
- sign-event and key or signature edges remain trust support boundaries

design_rule:
Use existing Edge names as reality anchors.
Use PersonaOS boundary terms to explain responsibility ownership.

