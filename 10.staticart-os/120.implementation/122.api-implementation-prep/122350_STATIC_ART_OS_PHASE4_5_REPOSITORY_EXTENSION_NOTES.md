# ============================================================
# STATIC ART OS PHASE4_5 REPOSITORY EXTENSION NOTES
# ============================================================

status: implementation-prep
system: StaticArtOS
phases:
  - Phase 4
  - Phase 5
owner: Boss
prepared_by: Zero

extension_targets:
  entitlement_repository:
    - replace reflection skeletons with actual persistence logic
    - bind deterministic entitlement resolution query/service support
    - bind access session read/write support
    - bind blocked state mapping

  library_repository:
    - finalize my library list query behavior
    - finalize continue reading query behavior
    - finalize continue viewing query behavior
    - bind reader progress optimistic update path
    - bind viewer progress optimistic update path
    - bind favorite add/remove persistence
    - bind annotation create persistence

important_rules:
  - PERSONA_DATABASE_URL remains Persona-side DB target
  - repository does not decide permission
  - repository does not return HTTP responses
  - projection remains derived
  - favorite persistence must not depend on current entitlement being full-access
