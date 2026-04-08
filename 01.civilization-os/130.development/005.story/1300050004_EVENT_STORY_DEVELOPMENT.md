# ============================================================
# EVENT STORY DEVELOPMENT
# ============================================================

status: canonical
layer: development
domain: story
subdomain: event-story
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines development guidance for event-linked stories.

development_rules:
- Keep public campaign summary generation separate from internal event-response detail.
- Do not let completed/cancelled event stories remain in live current selectors.
- Require replay-label handling for historical event displays.
- Keep cluster and single-event scope resolution explicit.

test_focus:
- event_ref/cluster_ref resolution
- current stage selection
- public summary filtering
- replay label enforcement
- completed/cancelled replay routing
- event-lifecycle/story-lifecycle consistency

anti_patterns:
- completed campaign shown via live event selector
- public event-story summary exposing internal response steps
- replay trace read through live event feed path

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
