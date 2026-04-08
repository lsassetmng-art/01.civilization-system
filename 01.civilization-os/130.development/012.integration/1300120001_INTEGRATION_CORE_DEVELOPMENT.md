# ============================================================
# INTEGRATION CORE DEVELOPMENT
# ============================================================

status: canonical
layer: development
domain: integration
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines development guidance for integration core implementation.

development_rules:
- Do not let proposal-only payloads enter write-capable handlers.
- Do not reuse public projection code for restricted raw export.
- Do not reuse replay/history readers for live event or current contract delivery.
- Do not let contract routing depend on UI route names or ad hoc flags.
- Do not skip explicit authority checks for bounded sync or canonical write.
- Do not suppress trace emission for denied or sensitive integration actions.

test_matrix:
- contract_ref validation -> required
- contract-class routing -> required
- proposal-only isolation -> required
- bounded-sync authorization -> required
- canonical-write guard -> required
- public projection filtering -> required
- replay/history separation -> required
- trace emission on allow/deny -> required
- lane partition leakage checks -> required

anti_patterns:
- one generic "handleIntegration" method with hidden branching and no lane isolation
- proposal payload normalized directly into canonical write model
- replay event fed through live event router
- restricted export and public export sharing the same serializer
- authority inferred from consumer type without explicit basis

review_checklist:
- contract class is explicit in code path
- proposal, sync, write, replay, and audit lanes are distinct
- public projection runs after restricted/raw separation
- authority_context is required where policy demands it
- history readers never mutate current/live state
- denial and mutation traces are emitted
- cache/partition invalidation is addressed on contract changes

migration_rules:
- extract public and restricted projection filters before refactoring export endpoints
- introduce proposal_only handler before removing legacy mixed import logic
- split replay readers from live event handlers before replay feature expansion
- preserve revision and trace linkage during contract migration

failure_focus:
- unknown contract class -> fail closed
- missing authority_context for mutating lane -> fail closed
- missing history_context for replay/audit lane -> fail closed
- proposal payload touching write-capable path -> fail closed

example_scenarios:
- A legacy mixed import endpoint is refactored into proposal_only_handler, bounded_sync_handler, and canonical_write_guard with route-level tests for lane leakage.

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
