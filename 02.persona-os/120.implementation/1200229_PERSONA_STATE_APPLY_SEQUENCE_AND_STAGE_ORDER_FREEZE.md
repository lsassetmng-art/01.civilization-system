# PERSONA STATE APPLY SEQUENCE AND STAGE ORDER FREEZE

status: no-code-implementation-entry
system: PersonaOS
layer: implementation
confirmed_at: 20260419_105016

purpose:
Freezes the canonical stage order and stage ownership for persona-state-apply.

canonical_stage_order:
1. env
2. auth
3. parse
4. control
5. idempotency
6. registry
7. persona_lookup
8. growth_event_ensure
9. engine_call
10. mark_processed
11. snapshot_trigger
12. audit_support
13. response_emit

stage_owner_summary:
- env, auth, parse, control, idempotency, registry, persona_lookup, growth_event_ensure, mark_processed, response_emit
  - owner: persona-state-apply orchestrator
- engine_call
  - owner: state_apply or apply_event_engine boundary
- snapshot_trigger
  - owner: snapshot issue boundary, called by orchestrator
- audit_support
  - owner: audit helper path, called by orchestrator

freeze_rules:
- engine_call remains the truth-mutation handoff point
- mark_processed remains after successful engine_call
- snapshot_trigger remains downstream from mark_processed
- audit support remains downstream support, not truth mutation
- response_emit remains the final packet-local terminal shaping stage

hard_rules:
- stage order may not be casually reordered in later discussion
- truth mutation ownership may not be pulled upward into the orchestrator
- snapshot trigger may not be merged into engine_call ownership
