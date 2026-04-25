# 0300700006_PERSONA_VISUAL_STATE_MODEL

status: exact-ready-draft
system: PersonaOS
layer: model
domain: visual
canonical: candidate
path: 030.model/0300700006_PERSONA_VISUAL_STATE_MODEL.md
exact_ready_at: 20260417_134829

purpose:
Defines the exact-ready visual model boundary for released or runtime-resolved
persona presentation.

primary_entities:
- persona_visual_profile
- persona_avatar_binding
- persona_background_binding
- persona_expression_profile
- persona_animation_profile

required_identifiers:
- visual_profile_id
- persona_id
- avatar_asset_id
- background_asset_id
- expression_profile_id
- animation_profile_id

required_fields:
- visual_version
- release_source_id
- visual_status
- asset_resolution_mode
- created_at
- updated_at

constraints:
- released visual profile must be lineage-resolvable
- runtime expression state must not rewrite released profile identity
- avatar and background binding must resolve deterministically
- missing asset fallback must remain explicit

query_paths:
- by persona_id
- by visual_profile_id
- by release_source_id
- by visual_status

review_targets:
- add exact asset reference fields
- add exact fallback rules
- add exact runtime-only state separation
