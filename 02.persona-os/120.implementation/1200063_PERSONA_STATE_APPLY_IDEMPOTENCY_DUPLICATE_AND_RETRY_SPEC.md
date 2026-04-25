# PERSONA STATE APPLY IDEMPOTENCY DUPLICATE AND RETRY SPEC

status: tier-a-exactness-ready
system: PersonaOS
layer: implementation
confirmed_at: 20260418_173018

purpose:
Fixes exact idempotency, duplicate, and retry semantics for persona-state-apply.

idempotency_key:
- event_id

duplicate_detection_source:
- personaos.growth_events filtered by event_id

duplicate_terminal_rule:
- if existing growth_events row has is_processed = true
  or processed_at is present
- return duplicate terminal
- map external status to 409 duplicate
- map internal terminal family to duplicate_noop
- do not call apply_event_engine
- do not mutate canonical truth

retry_safety_rule:
- mark_processed is the decisive completion step
- if engine succeeds but mark_processed fails, return 500 mark_processed_failed
- upstream retry remains possible under current policy
- duplicate handling on retry depends on growth_events completion state

growth_event_insert_rule:
- if no existing row is found, insert a new row with all NOT NULL-safe fields
- inserted row must remain non-processed until engine and completion path succeed

dead_path_rule:
- current concrete handler surfaces fatal and engine failure as 500-side error outcomes
- broader dead-letter routing remains an integration policy concern outside this exactness memo

