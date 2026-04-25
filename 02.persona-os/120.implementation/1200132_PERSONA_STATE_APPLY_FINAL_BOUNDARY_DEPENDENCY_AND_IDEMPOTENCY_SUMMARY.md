# PERSONA STATE APPLY FINAL BOUNDARY DEPENDENCY AND IDEMPOTENCY SUMMARY

status: final-targeted-baseline
system: PersonaOS
layer: implementation
confirmed_at: 20260418_204614

purpose:
Condenses stage ownership, dependencies, and idempotency rules for persona-state-apply.

stage_ownership_summary:
- env, auth, parse, control, idempotency, registry, persona lookup, growth event ensure, mark processed, response emit
  - owner: persona-state-apply orchestrator
- engine call
  - owner: state_apply or apply_event_engine boundary
- snapshot trigger
  - owner: snapshot issue boundary, called by orchestrator
- audit log
  - owner: audit support path, called by orchestrator

dependency_summary:
mandatory_env:
- INTERNAL_DISPATCH_TOKEN
- PERSONA_SUPABASE_URL
- PERSONA_SERVICE_ROLE_KEY
- SNAPSHOT_ISSUE_URL

optional_best_effort_env:
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

idempotency_rules:
- event_id is the single canonical idempotency key
- duplicate detection reads growth_events by event_id
- processed existing row => duplicate_noop path
- duplicate path must not call truth mutation
- mark_processed remains decisive for retry safety

