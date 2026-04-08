# ============================================================
# PLAYER BOUNDARY DEVELOPMENT
# ============================================================

status: canonical
layer: development
domain: player
subdomain: player-boundary
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines development guidance for player boundaries.

development_rules:
- Enforce boundary gating before requested actions reach business logic.
- Keep admin-managed mutations behind explicit authorization modules.
- Keep historical_only and view_only projections from implying hidden control.
- Separate boundary history reads from live action gate resolution.

test_focus:
- current boundary resolution
- action gate enforcement
- admin-managed authorization
- history reads
- control-leak-safe projection
- invalidation after boundary mutation

anti_patterns:
- checking boundary after action execution has started
- admin-managed transition via generic settings endpoint
- history-only boundary shown as live action-enabled state

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
