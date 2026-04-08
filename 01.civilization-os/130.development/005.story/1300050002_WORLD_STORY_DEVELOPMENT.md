# ============================================================
# WORLD STORY DEVELOPMENT
# ============================================================

status: canonical
layer: development
domain: story
subdomain: world-story
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines development guidance for world-level stories.

development_rules:
- Keep public-safe world-story summary separate from internal stage detail.
- Preserve world_ref-scoped stage history.
- Do not let campaign/strategy internals leak through world summary serializers.
- Keep replay readers separate from live world-story selectors.

test_focus:
- world_ref lookup
- current stage selection
- public summary filtering
- internal-detail projection
- replay/history reads
- primary world-story conflict handling
- correction lineage after stage change

anti_patterns:
- public city story reading restricted internal planning fields
- replay chain reconstructed from live cache only
- world story stage correction dropping old stage lineage

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
