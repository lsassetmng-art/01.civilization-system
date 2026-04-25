# ============================================================
# PERSONA OS ARCHITECTURE OVERVIEW
# ============================================================

status: implementation-ready-followup
system: PersonaOS
layer: architecture
canonical: true

purpose:
Aligns PersonaOS architecture with the exact implementation-ready contracts
that were fixed in the implementation layer.

architecture_authority:
- inbound event acceptance enters controlled validation only
- canonical apply is the only truth-mutation authority
- builder remains mutable authoring space until approved publish
- runtime serves released snapshot or package only
- external release is governed by rights contracts, not by ad hoc export behavior
- retry, dead-letter, and result feedback are mandatory architectural paths

primary_architecture_planes:
- event intake / validation / apply / feedback
- builder authoring / approval / publish
- visual resolution / runtime hosting
- snapshot issuance / package distribution
- external rights / license / access grant / transfer
- integration outbox / downstream callback / observability / security gate

binding_rule:
Detailed architectural descriptions must not contradict the exact contracts
already defined in implementation-ready files.

top_alignment_targets:
- 120.implementation/1200002_PERSONA_EDGE_FUNCTION_SPEC.md
- 120.implementation/1200003_PERSONA_STATE_APPLY_SPEC.md
- 120.implementation/130.builder/1200700002_PERSONA_BUILDER_API_SPEC.md
- 120.implementation/070.visual/1200700002_PERSONA_VISUAL_RUNTIME_IMPLEMENTATION.md
- 120.implementation/080.runtime_hosting/1200800002_PERSONA_RUNTIME_SESSION_IMPLEMENTATION.md
- 120.implementation/120.external_rights/1201200002_PERSONA_EXTERNAL_RELEASE_IMPLEMENTATION.md
