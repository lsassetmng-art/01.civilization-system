# ============================================================
# EXTERNAL INTEGRATION DEVELOPMENT
# ============================================================

status: canonical
layer: development
domain: integration
subdomain: external-integration
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines development guidance for external integration contracts.

development_rules:
- Keep public export serializer separate from restricted export serializer.
- Keep proposal-only import isolated from bounded-sync and write-capable lanes.
- Require explicit authority for restricted export and bounded sync.
- Keep historical external trace reads off current export paths.

test_focus:
- projection_scope validation
- public projection filtering
- restricted export authorization
- proposal-only isolation
- bounded-sync authorization
- history/audit trace reads
- public cache leakage prevention

anti_patterns:
- public API reading restricted payload fields then hiding them in frontend only
- proposal import reusing bounded sync transformer
- historical trace served by current export endpoint

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

example_scenarios:
- a refactor adds tests before replacing a legacy path
- a new serializer is split into public-safe and restricted variants
- a mutation path is blocked until authority checks are explicit

review_checklist:
- layer intent preserved
- restricted/public paths separated
- history/live paths separated
- required tests added
- failure paths covered

migration_rules:
- preserve prior behavior through regression tests
- introduce explicit new handlers before removing mixed legacy paths
- keep revision or trace linkage where relevant
