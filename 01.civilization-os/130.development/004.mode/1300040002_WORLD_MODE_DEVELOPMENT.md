# ============================================================
# WORLD MODE DEVELOPMENT
# ============================================================

status: canonical
layer: development
domain: mode
subdomain: world-mode
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines development guidance for world-facing modes.

development_rules:
- Keep public-safe world-mode projection separate from internal detail projection.
- Do not let maintenance or emergency detail leak through public cache or summary code.
- Preserve world_ref-scoped conflict detection.
- Preserve history chain for world-mode changes.

test_focus:
- world_ref lookup
- public summary filtering
- emergency/m aintenance authority requirement
- conflicting primary world modes
- history chain retrieval
- rollback after world-mode switch

anti_patterns:
- sharing public and internal world-mode serializer
- emergency world mode treated as public-safe by default
- world-mode history derived from live cache

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
