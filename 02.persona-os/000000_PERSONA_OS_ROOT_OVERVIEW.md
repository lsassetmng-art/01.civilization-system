# ============================================================
# PERSONA OS ROOT OVERVIEW
# ============================================================

status: implementation-ready-root-aligned
system: PersonaOS
canonical: true
scope: design-side

purpose:
This root overview defines the authoritative reading order and the
implementation-ready interpretation rule for PersonaOS.

authoritative_reading_order:
1. 010.constitution
2. 020.architecture
3. 030.model
4. 040.runtime
5. 050.flow
6. 080.policy
7. 090.interface
8. 100.integration
9. 110.operations
10. 120.implementation
11. 130.development
12. 140.infrastructure
13. 150.security

core_authority_rules:
- canonical apply is the only truth-mutation authority
- builder draft is mutable authoring state, not truth state
- runtime state is ephemeral execution state
- snapshot and package are immutable release-side artifacts
- external release requires explicit rights and release gate satisfaction
- retry and dead-letter are mandatory controlled paths
- auditability is mandatory for mutation, release, replay, and rights transitions

implementation_ready_interpretation_rule:
Where older narrative files are less exact than the implementation-ready
contracts, the exact contracts take precedence.

implementation_ready_anchor_files:
- 120.implementation/1200002_PERSONA_EDGE_FUNCTION_SPEC.md
- 120.implementation/1200003_PERSONA_STATE_APPLY_SPEC.md
- 120.implementation/130.builder/1200700002_PERSONA_BUILDER_API_SPEC.md
- 120.implementation/130.builder/1200700003_PERSONA_BUILDER_STORAGE_MAPPING.md
- 120.implementation/070.visual/1200700002_PERSONA_VISUAL_RUNTIME_IMPLEMENTATION.md
- 120.implementation/080.runtime-hosting/1200800002_PERSONA_RUNTIME_SESSION_IMPLEMENTATION.md
- 120.implementation/120.external-rights/1201200002_PERSONA_EXTERNAL_RELEASE_IMPLEMENTATION.md

root_done_definition:
- layer authority order is fixed
- exact files are declared authoritative
- root navigation is fixed
- integrated canonical rebuild is enabled
