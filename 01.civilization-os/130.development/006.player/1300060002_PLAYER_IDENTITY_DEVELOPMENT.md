# ============================================================
# PLAYER IDENTITY DEVELOPMENT
# ============================================================

status: canonical
layer: development
domain: player
subdomain: player-identity
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines development guidance for player identity binding.

development_rules:
- Keep identity binding separate from display/profile projection.
- Detect binding conflicts before any active-binding emission.
- Require authority for binding correction or replacement.
- Keep historical identity traces out of live resolution path.

test_focus:
- player_ref and identity_ref lookup
- active binding resolution
- conflict detection
- correction authorization
- history reads
- restricted identity projection filtering

anti_patterns:
- identity replacement through public profile update path
- historical identity record reused as current binding
- conflict state serialized as valid active identity

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
