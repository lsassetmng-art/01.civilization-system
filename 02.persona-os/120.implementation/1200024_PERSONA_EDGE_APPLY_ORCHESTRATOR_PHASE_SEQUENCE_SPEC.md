# PERSONA EDGE APPLY ORCHESTRATOR PHASE SEQUENCE SPEC

status: implementation-code-prep-ready
system: PersonaOS
layer: implementation
confirmed_at: 20260418_113441

target:
- edge_apply_orchestrator

phase_sequence:
1. env
   - load required secrets and service URLs
2. auth
   - verify x-internal-token
3. parse
   - parse request JSON and required fields
4. control
   - load system_control and enforce fail-closed halt rule
5. idempotency
   - read growth_events by event_id
   - if already processed then duplicate terminal
6. registry
   - read event_registry for event_type
   - obtain axis_deltas and severity-derived magnitude
7. persona lookup
   - resolve persona_id from user_id
8. growth event ensure
   - ensure NOT NULL-safe growth_events row after registry and persona lookup
9. engine call
   - invoke apply_event_engine with canonical apply payload
10. mark processed
   - update growth_events.is_processed and processed_at
11. snapshot trigger
   - call snapshot issue endpoint as best-effort
12. audit log
   - write apply_run_log success or failure entry
   - sign log best-effort if keys exist
13. response emit
   - emit terminal HTTP response

phase_rules:
- duplicate short-circuits before engine call
- registry lookup must happen before growth_events insert because severity drives magnitude
- persona lookup must happen before growth_events insert because persona_id is NOT NULL
- mark_processed failure is fail-closed and must return 500
- snapshot trigger is after mark_processed in current orchestrator contract

