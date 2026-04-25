# ============================================================
# STATIC ART OS PERSONA DUPLICATION AUDIT CHECKLIST
# ============================================================

status: active-checklist
system: StaticArtOS
owner: Boss
prepared_by: Zero

purpose:
Provide the audit checklist for detecting Persona core duplication
inside StaticArtOS.

audit_scope:
- tables
- api routes
- services
- repositories
- caches
- projections
- UI edit paths
- background jobs

audit_questions:
  table_level:
    - Does StaticArtOS define any table that stores persona core as source of truth?
    - Does StaticArtOS define persona mutable state locally?
    - Does StaticArtOS define emotion/growth/memory/signature/revocation canonical tables locally?
    - Does StaticArtOS define persona rights canonical tables locally?

  route_level:
    - Does any route directly mutate Persona canonical state?
    - Does any route expose local persona-edit completion flow?

  service_level:
    - Does any service perform direct Persona mutable write?
    - Does any service bypass request event -> PersonaOS apply -> result event flow?

  repository_level:
    - Does any repository write persona canonical fields directly?
    - Does any repository treat local persona cache as truth?

  cache_level:
    - Is any cache treated as canonical?
    - Can all caches be rebuilt from official source/events?

  display_level:
    - Is public display based on signed snapshot?
    - Is exhibition display based on signed snapshot?
    - Is external display based on signed snapshot?

red_flags:
- persona_core table exists in StaticArtOS
- persona_state table exists in StaticArtOS
- direct update to Persona canonical tables
- local signature truth
- local rights truth
- local memory truth
- local revocation truth
- UI path that edits persona canonical state directly

pass_condition:
- no local persona canonical duplication
- no direct mutation path
- only snapshot reference model remains
- caches are rebuildable only
