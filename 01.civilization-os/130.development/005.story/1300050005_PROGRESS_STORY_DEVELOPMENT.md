# ============================================================
# PROGRESS STORY DEVELOPMENT
# ============================================================

status: canonical
layer: development
domain: story
subdomain: progress-story
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines development guidance for progress-focused stories.

development_rules:
- Separate current milestone selection from full chain replay reading.
- Keep bounded branch filtering explicit.
- Do not leak hidden milestone-chain internals in participant-safe projections.
- Preserve completion lineage for replay.

test_focus:
- milestone_chain resolution
- current milestone selection
- bounded branch evaluation
- participant-safe projection
- replay/history reads
- completion lineage retention
- live/history confusion denial

anti_patterns:
- participant view showing full hidden branch tree
- current milestone computed from replay chain only
- completed chain reused as live current progress

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
