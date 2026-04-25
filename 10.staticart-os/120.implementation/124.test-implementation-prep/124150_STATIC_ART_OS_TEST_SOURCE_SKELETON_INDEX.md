# ============================================================
# STATIC ART OS TEST SOURCE SKELETON INDEX
# ============================================================

status: implementation-prep
system: StaticArtOS
owner: Boss
prepared_by: Zero

purpose:
This file defines the initial source-skeleton layout for
StaticArtOS test implementation.

source_root:
  - 124.test-implementation-prep/source-skeleton/staticart-tests

main_units:
  - config
  - fixtures
  - api
  - policy
  - audit
  - runners

implementation_objective:
  - Turn acceptance cases into executable test entry points
  - Keep permission/policy/projection regression targets visible
  - Keep PERSONA side environment assumptions explicit

important_rules:
  - Use PERSONA_DATABASE_URL for Persona-side DB work
  - Do not treat projection data as canonical source in tests
  - Reader continuity and viewer continuity remain separate
  - Audit assertions must be included for governance actions
