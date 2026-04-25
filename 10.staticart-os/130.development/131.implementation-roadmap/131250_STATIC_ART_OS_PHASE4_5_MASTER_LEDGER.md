# ============================================================
# STATIC ART OS PHASE4_5 MASTER LEDGER
# ============================================================

status: implementation-prep
system: StaticArtOS
phases:
  - Phase 4
  - Phase 5
owner: Boss
prepared_by: Zero

objective:
Bundle the entitlement/access work and the library/continuity work
as the next integrated implementation unit.

phase_4_scope:
  - effective entitlement resolution
  - full/sample access session
  - purchase reflection
  - subscription reflection
  - blocked_by_region
  - blocked_by_age_policy
  - blocked_by_rights_change
  - ownership + subscription coexistence

phase_5_scope:
  - my library
  - continue reading
  - continue viewing
  - reader progress save
  - viewer progress save
  - favorite add/remove
  - annotation create
  - favorite persistence after entitlement loss

execution_order:
  - Phase 4 first
  - Phase 5 second
  - run Phase 4/5 bundled checks
  - then move to Phase 6 admin/governance UI

important_rules:
  - PERSONA_DATABASE_URL is the Persona-side DB target
  - subscription access never upgrades to permanent ownership
  - blocked states are effective blocks, not history deletion
  - reader continuity and viewer continuity remain separate
  - favorite survives entitlement loss unless user explicitly deletes it
