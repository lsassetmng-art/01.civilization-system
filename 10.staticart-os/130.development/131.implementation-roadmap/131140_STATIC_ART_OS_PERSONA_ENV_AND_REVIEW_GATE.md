# ============================================================
# STATIC ART OS PERSONA ENV AND REVIEW GATE
# ============================================================

status: implementation-prep
system: StaticArtOS
owner: Boss
prepared_by: Zero

environment_rules:
  persona_side_db:
    - PERSONA_DATABASE_URL is the canonical connection target
    - DATABASE_URL must not be used for StaticArtOS Persona-side DB work

db_execution_rules:
  - Use psql with PERSONA_DATABASE_URL
  - Review SQL with Sato before apply
  - Keep changes additive where possible
  - Preserve auditability

verification_rules:
  before_apply:
    - PERSONA_DATABASE_URL is set
    - SQL files exist
    - runner path is correct
  after_apply:
    - expected schema exists
    - expected tables exist
    - indexes exist
    - no ERP-side write occurred

guardrails:
  - Projection must not become canonical source
  - Reader/viewer continuity must remain separate
  - Favorites survive entitlement loss
  - Subscription access never upgrades to permanent ownership
