# PERSONA EDGE APPLY ORCHESTRATOR TABLE AND RPC DEPENDENCY SPEC

status: design-freeze-ready
system: PersonaOS
layer: implementation
confirmed_at: 20260418_113916

purpose:
Fixes the table and RPC touchpoints the orchestrator depends on.

read_dependencies:
- personaos.system_control
- personaos.growth_events
- personaos.event_registry
- personaos.personas

write_dependencies:
- personaos.growth_events insert
- personaos.growth_events update
- personaos.apply_run_log insert best-effort

rpc_dependencies:
- personaos.apply_event_engine

derived_value_rules:
- magnitude derives from event_registry.severity
- persona_id derives from personas lookup
- app_namespace derives from world with fallback behavior
- context stores payload plus traced event_version

dependency_rules:
- growth_events insert must happen after registry and persona lookup
- apply_event_engine owns truth mutation, not the orchestrator
- apply_run_log is evidence support, not truth mutation
- system_control is operational gate, not business truth

