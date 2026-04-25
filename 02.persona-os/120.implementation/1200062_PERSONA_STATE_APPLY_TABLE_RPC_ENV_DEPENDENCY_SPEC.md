# PERSONA STATE APPLY TABLE RPC ENV DEPENDENCY SPEC

status: tier-a-exactness-ready
system: PersonaOS
layer: implementation
confirmed_at: 20260418_173018

purpose:
Fixes exact environment, table, and RPC dependencies for persona-state-apply.

mandatory_env:
- INTERNAL_DISPATCH_TOKEN
- PERSONA_SUPABASE_URL
- PERSONA_SERVICE_ROLE_KEY
- SNAPSHOT_ISSUE_URL

optional_env_best_effort:
- PERSONAOS_KEY_ID
- PERSONAOS_ED25519_PRIVATE_KEY_PKCS8_B64

read_dependencies:
- personaos.system_control
- personaos.growth_events
- personaos.event_registry
- personaos.personas

write_dependencies:
- personaos.growth_events insert
- personaos.growth_events update is_processed and processed_at
- personaos.apply_run_log insert best-effort

rpc_dependency:
- personaos.apply_event_engine

derived_value_rules:
- app_namespace derives from world with fallback to unknown
- magnitude derives from personaos.event_registry.severity
- magnitude must remain clamped to 1..100
- persona_id derives from personas lookup by user_id
- context persists payload plus traced event_version

dependency_rules:
- growth_events insert occurs only after registry success and persona lookup success
- apply_event_engine owns truth mutation, not the orchestrator shell
- apply_run_log is evidence support only
- system_control is operational gate only

