# ============================================================
# PLAYER PROGRESS DEVELOPMENT
# ============================================================

status: canonical
layer: development
domain: player
subdomain: player-progress
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines development guidance for player progression.

development_rules:
- Keep current progress selection separate from history/replay reads.
- Treat restricted progression as capability-reducing logic, not a display label only.
- Keep self-summary projection separate from internal detail projection.
- Require explicit authority for sensitive progression mutations where policy demands it.

test_focus:
- current progress selection
- restricted progression filtering
- self-summary projection
- progression mutation authorization
- history reads
- live/history confusion denial

anti_patterns:
- restricted progression rendered but not enforced
- self-summary serializer exposing internal rationale fields
- historical progression snapshot treated as live current stage

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
