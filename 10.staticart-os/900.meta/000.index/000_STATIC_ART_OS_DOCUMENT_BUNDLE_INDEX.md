# ============================================================
# STATIC ART OS DOCUMENT BUNDLE INDEX
# ============================================================

status: implementation-ready
system: StaticArtOS
owner: Boss
prepared_by: Zero

purpose:
This index is the canonical entry point for the implementation-ready
document bundle of StaticArtOS.

document_set:
  - 010.overview/010_STATIC_ART_OS_IMPLEMENTATION_READY_OVERVIEW.md
  - 060.reference-integration/060130_STATIC_ART_OS_CX22073JW_REFERENCE_INTEGRATION_EXACTNESS.md
  - 120.exactness/120110_STATIC_ART_OS_DB_SCHEMA_EXACTNESS.md
  - 120.exactness/120120_STATIC_ART_OS_API_EXACTNESS.md
  - 120.exactness/120130_STATIC_ART_OS_SCREEN_STATEFLOW_EXACTNESS.md
  - 120.exactness/120140_STATIC_ART_OS_PERMISSION_POLICY_EXACTNESS.md
  - 130.development/130110_STATIC_ART_OS_ACCEPTANCE_AND_TEST_EXACTNESS.md
  - 999.summary/999900_STATIC_ART_OS_IMPLEMENTATION_READY_SUMMARY.md

bundle_objective:
  - Move StaticArtOS from integrated detailed design into implementation-ready design.
  - Freeze database, API, UI stateflow, permission, policy, reference integration, and acceptance criteria.
  - Make implementation start possible without major interpretation gaps.

canonical_reading_order:
  - overview
  - db exactness
  - api exactness
  - screen/stateflow exactness
  - permission/policy exactness
  - cx22073jw integration exactness
  - acceptance/test exactness
  - summary

implementation_ready_definition:
  - Database structure fixed
  - API contract fixed
  - Screen/stateflow fixed
  - Permission/policy fixed
  - CX22073JW boundary fixed
  - Acceptance criteria fixed

notes:
  - Projection surfaces are derived and must not become canonical write sources.
  - Exhibition Builder reads projection only.
  - Favorites, progress, and annotations must survive entitlement loss unless explicitly deleted by user.
