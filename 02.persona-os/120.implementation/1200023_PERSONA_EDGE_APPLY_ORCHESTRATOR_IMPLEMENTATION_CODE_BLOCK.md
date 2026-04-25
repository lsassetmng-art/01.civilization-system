# PERSONA EDGE APPLY ORCHESTRATOR IMPLEMENTATION CODE BLOCK

status: implementation-code-prep-ready
system: PersonaOS
layer: implementation
confirmed_at: 20260418_113441

canonical_role_name:
- edge_apply_orchestrator

purpose:
Converts the first-wave edge_apply target into an implementation-code-ready orchestrator
definition aligned to the shared TypeScript handler shape.

code_shape_reference:
This block assumes a TypeScript edge function orchestrator with these major concerns:
- structured JSON logging
- fail-closed control gate
- idempotency and retry-safe handling
- event_version tracing
- best-effort signed apply_run_log
- best-effort snapshot trigger

truth_boundary_split:
- edge_apply_orchestrator owns intake, gate, dedupe, lookup, handoff construction, terminal mapping, retry/dead-letter routing, and audit support
- state_apply or apply_event_engine owns canonical mutable truth mutation
- snapshot_issue owns immutable external release artifact issuance
- signature and revocation remain trust-side boundaries

orchestrator_stages:
1. env
2. auth
3. parse
4. control
5. idempotency
6. registry
7. persona lookup
8. growth_events ensure or insert
9. engine call
10. mark_processed
11. snapshot trigger
12. audit log
13. response emit

hard_stop_stages:
- missing_env
- forbidden
- invalid_json
- missing_required
- apply_halted
- registry failure
- persona_not_found
- engine_error
- mark_processed_failed
- internal_error

best_effort_stages:
- snapshot trigger
- apply_run_log signature generation
- audit success log persistence must never break main apply path when helper is declared best-effort

non_scope:
- runtime_session code generation
- visual_runtime code generation
- external_release code generation
- external direct mutable truth access
- direct DB schema migration design

