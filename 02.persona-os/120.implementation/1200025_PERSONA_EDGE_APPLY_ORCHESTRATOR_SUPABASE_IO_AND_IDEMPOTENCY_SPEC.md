# PERSONA EDGE APPLY ORCHESTRATOR SUPABASE IO AND IDEMPOTENCY SPEC

status: implementation-code-prep-ready
system: PersonaOS
layer: implementation
confirmed_at: 20260418_113441

target:
- edge_apply_orchestrator

read_touchpoints:
- personaos.system_control
- personaos.growth_events
- personaos.event_registry
- personaos.personas

write_touchpoints:
- personaos.growth_events insert when missing
- personaos.growth_events update is_processed and processed_at
- personaos.apply_run_log best-effort
- state_apply via personaos.apply_event_engine rpc
- snapshot issue via external internal endpoint call

idempotency_key:
- event_id

duplicate_detection_rule:
- if growth_events row exists and is_processed or processed_at is already set
- return duplicate terminal path
- do not call canonical apply
- do not mutate truth

growth_events_insert_rule:
Insert only after:
- event_registry success
- persona lookup success

growth_events_required_columns_for_insert:
- event_id
- user_id
- persona_id
- app_namespace
- event_type
- magnitude
- context
- occurred_at
- received_at
- is_processed

magnitude_rule:
- derive magnitude from personaos.event_registry.severity
- clamp to 1..100

retry_safety_rule:
- mark_processed is the decisive completion write
- if mark_processed fails, return 500 so upstream retry remains possible

