# PERSONA EDGE TOP 5 PREIMPLEMENTATION COMPARISON

status: final-design-baseline
system: PersonaOS
layer: implementation
confirmed_at: 20260418_195327

purpose:
Ranks the five most important functions to check first before any future implementation-entry planning.

selection_rule:
Chosen by cross-family leverage, downstream impact, and boundary sensitivity.

top_5:
1. persona-state-apply
2. snapshot-issue
3. snapshot-verify
4. publish_apply
5. civilization-event-dispatcher

comparison:

## 1. persona-state-apply
role:
- runtime-engine orchestrator edge

why_it_is_top_priority:
- closest edge to canonical truth mutation boundary
- controls idempotency, truth handoff, processed marking, snapshot trigger, and audit coordination

main_locked_points:
- exact request and response contract
- stage owner matrix
- fail-closed vs best-effort split
- idempotency and duplicate semantics
- snapshot trigger class split

remaining_followup_type:
- event_type-by-event_type snapshot class enumeration only

## 2. snapshot-issue
role:
- immutable release artifact issuance boundary

why_it_is_top_priority:
- all external trust and release surfaces depend on it
- separates mutable truth from released artifact

main_locked_points:
- issue request and response contract
- fail-closed issuance policy
- lineage and artifact dependency model

remaining_followup_type:
- production-specific release class tightening only

## 3. snapshot-verify
role:
- trust verification boundary

why_it_is_top_priority:
- public trust interpretation depends on it
- external-safe naming is already fixed and should stay stable

main_locked_points:
- exact verification status family
- public-safe field naming
- revoked vs invalid vs unknown_key vs malformed distinction

remaining_followup_type:
- wording polish only

## 4. publish_apply
role:
- release application boundary

why_it_is_top_priority:
- converts approved candidate into released surface
- sits between governance and released listing

main_locked_points:
- approved-input-only schema
- release result semantics
- downstream relationship to released listing

remaining_followup_type:
- operational schema polish only

## 5. civilization-event-dispatcher
role:
- internal routing and handoff boundary

why_it_is_top_priority:
- connects producer, validate, runtime engine, retry, and dead-notify
- critical for failure routing correctness

main_locked_points:
- dispatch status family
- retry budget classes
- retry exhaustion outcomes
- dead-notify separation

remaining_followup_type:
- concrete numeric retry tuning only

recommended_reading:
If only one function is revisited next, use this ranking in order.

