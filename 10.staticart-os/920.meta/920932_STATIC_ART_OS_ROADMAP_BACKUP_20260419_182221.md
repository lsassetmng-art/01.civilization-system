# ============================================================
# STATIC ART OS ROADMAP
# ============================================================

status: active
system: StaticArtOS
mode: standalone
owner: Boss
prepared_by: Zero

objective:
Provide the canonical root roadmap for StaticArtOS standalone work
inside this chat scope.

scope_in_this_chat:
- StaticArtOS standalone implementation-prep
- Persona-side DB usage with PERSONA_DATABASE_URL
- No CX22073JW integration in this chat
- Exhibition Builder support only through local derived projection

phase_roadmap:
  phase_1:
    name: DB foundation
    status: prepared
    includes:
      - schema
      - enums
      - tables
      - indexes
      - apply / verify workflow

  phase_2:
    name: creator write backbone
    status: prepared
    includes:
      - asset create
      - detail read
      - localization
      - rights
      - sales
      - subscription
      - validator / guard / repository binding

  phase_3:
    name: governance and publish backbone
    status: prepared
    includes:
      - self check
      - review request
      - review decision
      - publish marketplace
      - publish library only
      - delist / restrict / archive
      - audit
      - projection enqueue

  phase_4:
    name: entitlement and access
    status: prepared
    includes:
      - entitlement resolution
      - access session
      - purchase reflection
      - subscription reflection
      - block handling

  phase_5:
    name: library and continuity
    status: prepared
    includes:
      - my library
      - continue reading
      - continue viewing
      - reader progress
      - viewer progress
      - favorite
      - annotation

  phase_6:
    name: admin and governance UI
    status: prepared
    includes:
      - review queue
      - review detail
      - audit detail
      - support_readonly behavior

  phase_7:
    name: acceptance and regression
    status: prepared
    includes:
      - lifecycle acceptance
      - governance acceptance
      - entitlement acceptance
      - library acceptance
      - policy acceptance
      - audit and permission acceptance

  phase_8:
    name: external integration
    status: deferred
    includes:
      - external knowledge/reference integration handled outside this chat

important_rules:
- PERSONA_DATABASE_URL is the Persona-side DB target
- projection remains derived
- restricted is stronger than delisted
- favorites survive entitlement loss
- subscription access never upgrades to permanent ownership

current_judgement:
- StaticArtOS standalone structure is organized and reviewable.
- External integration is intentionally out of scope in this chat.
<!-- PERSONA_REFERENCE_SIDE_LINK_RULE_START -->

## persona_reference_side_link_rule

- Persona integration in StaticArtOS is side-link only.
- StaticArtOS does not add Persona core canonical tables.
- Persona reference work may add signed snapshot reference tables and local display projection only.
- Persona mutable state change must follow request event -> PersonaOS apply -> result event -> StaticArtOS reflect.
- Persona reference alignment should be treated as additive design work after core asset/publish backbone stability.

<!-- PERSONA_REFERENCE_SIDE_LINK_RULE_END -->
