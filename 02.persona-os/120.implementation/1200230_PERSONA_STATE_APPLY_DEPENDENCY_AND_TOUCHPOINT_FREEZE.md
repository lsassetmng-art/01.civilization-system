# PERSONA STATE APPLY DEPENDENCY AND TOUCHPOINT FREEZE

status: no-code-implementation-entry
system: PersonaOS
layer: implementation
confirmed_at: 20260419_105016

purpose:
Freezes the dependency surface and touchpoint model for persona-state-apply.

mandatory_env:
- INTERNAL_DISPATCH_TOKEN
- PERSONA_SUPABASE_URL
- PERSONA_SERVICE_ROLE_KEY
- SNAPSHOT_ISSUE_URL

optional_best_effort_env:
- PERSONAOS_KEY_ID
- PERSONAOS_ED25519_PRIVATE_KEY_PKCS8_B64

read_touchpoints:
- personaos.system_control
- personaos.growth_events
- personaos.event_registry
- personaos.personas

write_touchpoints:
- personaos.growth_events insert
- personaos.growth_events update is_processed and processed_at
- personaos.apply_run_log insert best-effort

rpc_touchpoint:
- personaos.apply_event_engine

derived_value_rules:
- app_namespace derives from world with unknown fallback
- magnitude derives from event_registry.severity and remains clamped 1..100
- persona_id derives from personas lookup by user_id
- context persists payload with traced event_version

freeze_rules:
- no new mandatory touchpoint may be added casually
- growth_events insert remains downstream from registry and persona lookup success
- apply_event_engine remains the only canonical truth mutation touchpoint in this packet
- apply_run_log remains evidence support only
