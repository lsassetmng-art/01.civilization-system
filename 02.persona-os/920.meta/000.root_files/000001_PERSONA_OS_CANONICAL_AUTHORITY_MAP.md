# ============================================================
# PERSONA OS CANONICAL AUTHORITY MAP
# ============================================================

status: canonical-authority-map
system: PersonaOS
canonical: true
scope: root-governance

authority_order:
1. constitution
2. architecture
3. model
4. runtime
5. flow
6. policy
7. interface
8. integration
9. operations
10. implementation
11. development
12. infrastructure
13. security

exact_contract_authority:
The following exact-contract areas override older narrative ambiguity:
- inbound apply request / response / reject / status
- canonical apply authority and idempotent apply
- builder draft / conflict / validation / approval / publish
- runtime session lifecycle
- snapshot issue and immutability
- package integrity and revocation handling
- external release / license / access grant / transfer split
- retry / dead-letter / replay / operations gate

primary_anchor_files:
- 120.implementation/1200002_PERSONA_EDGE_FUNCTION_SPEC.md
- 120.implementation/1200003_PERSONA_STATE_APPLY_SPEC.md
- 120.implementation/130.builder/1200700002_PERSONA_BUILDER_API_SPEC.md
- 120.implementation/130.builder/1200700003_PERSONA_BUILDER_STORAGE_MAPPING.md
- 120.implementation/070.visual/1200700002_PERSONA_VISUAL_RUNTIME_IMPLEMENTATION.md
- 120.implementation/080.runtime_hosting/1200800002_PERSONA_RUNTIME_SESSION_IMPLEMENTATION.md
- 120.implementation/120.external_rights/1201200002_PERSONA_EXTERNAL_RELEASE_IMPLEMENTATION.md

interpretation_rule:
When an older document is less exact or conflicts with these contracts,
the exact-contract files take precedence.
