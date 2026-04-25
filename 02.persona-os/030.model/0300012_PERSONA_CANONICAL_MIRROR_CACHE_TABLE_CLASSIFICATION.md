# PERSONA CANONICAL MIRROR CACHE TABLE CLASSIFICATION

status: confirmed
system: PersonaOS
layer: model
confirmed_at: 20260418_072945

purpose:
Classifies key Persona-side tables into canonical, mirror, and cache classes for PersonaOS.

canonical_tables:
- personas
- persona_state
- persona_snapshot
- growth_core_state
- growth_events
- memory_state
- memory_events
- signing_key_registry
- revocation_list
- sign_log
- event_registry
- event_envelope_spec
- namespace_registry

canonical_with_special_note:
- persona_snapshot = immutable release artifact, not mutable truth
- memory_events = append-only canonical event log
- growth_events = append-only canonical event log
- visual_parts = canonical only when treated as authored source assets
- visual_templates = canonical only when treated as authored source templates
- visual_assets = canonical only when bound to released snapshot lineage

mirror_tables_default:
- products
- product_skus
- orders
- subscription_plans
- user_subscription
- world_signing_keys

cache_or_work_tables_default:
- visual_generation_jobs
- non-released visual assets
- temporary derived read models
- temporary runtime projections

boundary_notes:
- products or orders or subscriptions default to BusinessOS canonical, PersonaOS mirror
- world_signing_keys should be treated as external trust-anchor mirror
- visual_generation_jobs are not persona truth
- visual_assets require release-binding to become canonical artifacts

collision_candidates:
- growth_core_state vs persona_growth_state
- entitlements vs user_entitlement
- visual_assets canonical vs cache promotion rule
- commerce tables inside PersonaOS without boundary labels
