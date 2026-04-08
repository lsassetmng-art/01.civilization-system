# ============================================================
# PLAYER STORY DEVELOPMENT
# ============================================================

status: canonical
layer: development
domain: story
subdomain: player-story
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines development guidance for player-level stories.

development_rules:
- Enforce ownership checks before self-story projection.
- Keep support-view projectors distinct from self projectors.
- Keep private branch filtering explicit and testable.
- Do not allow replay reads to use current live selectors.

test_focus:
- player_ref lookup
- ownership verification
- support authority enforcement
- private branch filtering
- replay/history reads
- onboarding branch exclusivity
- correction lineage preservation

anti_patterns:
- self-story and support-story served by same unfiltered serializer
- another player's story accessible via weak ownership check
- replay history returned by current-stage endpoint

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
