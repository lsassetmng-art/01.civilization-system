# PERSONA EDGE APPLY CONCRETE IMPLEMENTATION BLOCK

status: implementation-block-ready
system: PersonaOS
layer: implementation
confirmed_at: 20260418_074527

target:
- edge_apply
- base_doc: 120.implementation/1200002_PERSONA_EDGE_FUNCTION_SPEC.md

purpose:
Defines the concrete implementation-entry block for edge_apply before any DB or app code is written.

implementation_scope:
- inbound event intake handling
- request field validation
- correlation and dedupe handling
- canonical apply handoff contract
- terminal result shaping
- retry and dead-letter branching
- audit evidence emission

explicit_non_scope:
- runtime_session implementation
- visual_runtime implementation
- external_release implementation
- direct external mutable truth read
- direct external mutable truth write
- full cross-wave implementation

required_fixed_inputs:
- exact payload fixation
- exact code family fixation
- exact state transition fixation
- exact persistence and audit fixation
- exact acceptance and done gate fixation
- first-wave boundary enforcement rule

concrete_implementation_units:
1. input contract parser
2. validation pipeline
3. dedupe and replay guard
4. canonical apply handoff
5. terminal result mapper
6. retry scheduler hook
7. dead-letter hook
8. audit evidence writer

required_output_contract:
- success result
- reject result
- duplicate_noop result
- retry_wait scheduling result
- dead_lettered result
- terminal_failed result

hard_rules:
- duplicate_noop must not mutate truth
- validation_rejected must not mutate truth
- external callers must not receive direct mutable truth access
- every terminal path must emit audit evidence
- retry and dead-letter must remain distinguishable

exit_condition:
This block is complete when edge_apply can be turned into code work items
without ambiguity in payload, code family, transitions, storage, or boundary rules.


# ORCHESTRATOR NAMING ALIAS

orchestrator_naming_confirmed_at: 20260418_112951

canonical_reading:
This document name contains edge_apply for continuity, but its actual role in PersonaOS
should be read as an Edge family orchestrator or dispatcher target.

preferred_role_name:
- edge_apply_orchestrator

allowed_alternative_names:
- persona_state_apply_dispatcher_edge
- intake_to_apply_dispatcher
- event_intake_orchestrator_edge

naming_rule:
- keep current filename for now
- treat state_apply as the canonical mutable truth mutation boundary
- treat this document as intake/orchestration logic, not truth ownership
