# PERSONA EDGE APPLY ORCHESTRATOR HTTP AND TERMINAL MAPPING SPEC

status: implementation-code-prep-ready
system: PersonaOS
layer: implementation
confirmed_at: 20260418_113441

target:
- edge_apply_orchestrator

http_mapping:
- 200 -> ok true
- 400 -> invalid_json
- 400 -> missing_required
- 400 -> event_not_enabled
- 403 -> forbidden
- 404 -> persona_not_found
- 409 -> duplicate
- 500 -> engine_error
- 500 -> mark_processed_failed
- 500 -> internal_error
- 503 -> apply_halted

internal_terminal_families:
- applied
- rejected
- duplicate_noop
- retrying
- dead_lettered
- terminal_failed

mapping_rule:
- current external HTTP response may stay compact
- internal terminal families must remain explicit in design and logs
- duplicate 409 maps to duplicate_noop family
- apply_halted 503 maps to halted operational terminal, not success
- engine_error and internal_error remain failure terminals
- mark_processed_failed is fail-closed retryable by upstream decision

response_contract_rule:
Do not expose canonical mutable truth payloads in terminal HTTP response.
Expose only orchestrator-safe result information.

