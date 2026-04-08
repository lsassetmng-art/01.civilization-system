# ============================================================
# PLAYER CORE DEVELOPMENT
# ============================================================

status: canonical
layer: development
domain: player
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines development guidance for canonical player implementation.

development_rules:
- Do not collapse lifecycle, role, progress, and boundary into one ad hoc "status" field.
- Do not determine live participation from UI/session state alone.
- Do not reuse historical snapshots as live player records.
- Do not mutate player lifecycle before validating authority and identity basis.
- Do not expose restricted fields before boundary and projection filtering.
- Do not skip trace emission for high-impact mutations.

test_matrix:
- player_ref validation -> required
- live player resolution -> required
- lifecycle mutation authorization -> required
- identity/role/progress/boundary composition -> required
- boundary action gating -> required
- current/history separation -> required
- restricted-field filtering -> required
- trace emission on suspension/archival/denial -> required

anti_patterns:
- "isActive" UI flag treated as canonical lifecycle
- archived player served from live cache
- role/progress logic embedded in frontend route guards only
- boundary checks performed after mutating action
- unrestricted serializer reused for self, public, and internal outputs

review_checklist:
- lifecycle validated before participation
- identity, role, progress, and boundary modules remain separate
- live and history paths are distinct
- restricted fields filtered before output
- authority_context required where mutation policy demands it
- denied mutations emit stable failure codes and trace
- cache invalidation is considered for lifecycle changes

migration_rules:
- split monolithic player state handlers into lifecycle, identity, role, progress, and boundary modules
- add history readers before removing legacy snapshot endpoints
- preserve revision_ref and prior-state linkage during refactors
- add regression tests when broad serializers are narrowed into scoped projectors

failure_focus:
- missing authority_context for lifecycle mutation -> fail closed
- missing history_context for historical reads -> fail closed
- missing boundary check before action -> fail closed

example_scenarios:
- A suspension refactor first validates authority, then applies lifecycle change, invalidates live participation, preserves prior-state linkage, and emits trace.

scope:
Covers development guidance, test expectations, migration caution,
and review focus for this subdomain.

required_behavior:
- preserve canonical separation defined by earlier layers
- add tests for the riskiest failure paths
- keep history and live paths distinct where applicable

validation_rules:
- new code must preserve layer intent
- new code must preserve failure-code stability where applicable
- new code must not weaken authority or visibility boundaries

failure_codes:
- DEVELOPMENT_GUIDANCE_SCOPE_DRIFT
- DEVELOPMENT_GUIDANCE_TEST_GAP
- DEVELOPMENT_GUIDANCE_HISTORY_LIVE_MIX
- DEVELOPMENT_GUIDANCE_AUTHORITY_REGRESSION
