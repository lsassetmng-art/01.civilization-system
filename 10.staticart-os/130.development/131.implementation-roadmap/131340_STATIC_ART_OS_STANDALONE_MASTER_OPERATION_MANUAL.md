# ============================================================
# STATIC ART OS STANDALONE MASTER OPERATION MANUAL
# ============================================================

status: implementation-prep
system: StaticArtOS
mode: standalone
owner: Boss
prepared_by: Zero

objective:
Provide the canonical standalone execution and verification order
for StaticArtOS without CX22073JW integration.

scope_included:
  - Phase 1: DB foundation
  - Phase 2: creator write backbone
  - Phase 3: governance and publish backbone
  - Phase 4: entitlement and access
  - Phase 5: library and continuity
  - Phase 6: admin and governance UI
  - Phase 7: acceptance and regression

scope_excluded:
  - CX22073JW integration
  - external knowledge/reference publish
  - cross-chat external sync

environment_rule:
  - PERSONA_DATABASE_URL is the only Persona-side DB target
  - DATABASE_URL must not be used for StaticArtOS Persona-side DB work

recommended_run_order:
  1:
    - Phase 1 apply / verify
  2:
    - Phase 2 binding check
  3:
    - Phase 3 governance/publish check
  4:
    - Phase 4/5 entitlement/library check
  5:
    - Phase 6/7 admin/acceptance check
  6:
    - final standalone full check
  7:
    - completion memo fill
    - implementation-ready judgement

hard_stops:
  - stop if PERSONA_DATABASE_URL is not set
  - stop if Phase 1 DB verification fails
  - stop if any later phase check reports missing required backbone
  - stop if unresolved blockers are not named

standalone_completion_definition:
  - StaticArtOS works as a standalone implementation-ready system
  - external knowledge/reference integration is not required in this chat
