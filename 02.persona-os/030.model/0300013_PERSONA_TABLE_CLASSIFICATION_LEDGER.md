# PERSONA TABLE CLASSIFICATION LEDGER

status: confirmed
system: PersonaOS
layer: model
confirmed_at: 20260418_073938

purpose:
Provides a canonical / mirror / cache classification for key Persona-side tables in PersonaOS.

canonical_mutable_truth:
- personas
- persona_state
- growth_core_state
- memory_state

canonical_append_only_event_or_control:
- growth_events
- memory_events
- signing_key_registry
- revocation_list
- sign_log
- event_registry
- event_envelope_spec
- namespace_registry

canonical_immutable_release_artifact:
- persona_snapshot

canonical_conditional_release_artifact:
- visual_assets when release-bound to snapshot lineage
- visual_parts when treated as authored source assets
- visual_templates when treated as authored source templates

mirror_default:
- products
- product_skus
- orders
- subscription_plans
- user_subscription
- world_signing_keys

read_model_or_projection_candidate:
- persona_growth_state
- user_entitlement

cache_or_work_state:
- visual_generation_jobs
- non-released visual assets
- temporary derived projections
- temporary runtime acceleration state

boundary_rules:
- no table may act as both canonical and mirror at the same time
- no cache or work table may be treated as mutable truth
- release artifacts remain distinct from mutable truth

