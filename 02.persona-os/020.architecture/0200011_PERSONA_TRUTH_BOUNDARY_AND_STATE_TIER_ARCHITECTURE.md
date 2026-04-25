# PERSONA TRUTH BOUNDARY AND STATE TIER ARCHITECTURE

status: confirmed
system: PersonaOS
layer: architecture
confirmed_at: 20260418_072945

purpose:
Fixes the truth boundary of PersonaOS after Persona-side inventory review.

core_architecture_position:
PersonaOS is the single source of mutable persona truth.
External OSs may consume signed snapshots but must not mutate PersonaOS internal truth directly.

state_tiers:
1. canonical mutable truth
2. canonical immutable release artifact
3. mirror or cache or derived state

canonical_mutable_truth_scope:
- personas
- persona_state
- growth_core_state
- memory_state

canonical_append_only_or_control_plane_scope:
- growth_events
- memory_events
- signing_key_registry
- revocation_list
- sign_log
- event_registry
- event_envelope_spec
- namespace_registry

canonical_immutable_release_artifact_scope:
- persona_snapshot
- signed snapshot outputs
- release-bound visual artifacts
- release-bound package or signature outputs where applicable

mirror_or_cache_scope:
- external-system mirrors
- business-scoped commerce mirrors
- derived read models
- temporary generation jobs
- runtime acceleration data

hard_rules:
- external OS must not read canonical mutable truth directly
- external OS must not update PersonaOS internal state directly
- PersonaOS must distinguish truth from mirror or cache explicitly
- all external consumption must pivot on signed snapshot and event contract

preferred_primary_pipeline:
event intake -> validation -> apply -> snapshot issue -> external consumption
