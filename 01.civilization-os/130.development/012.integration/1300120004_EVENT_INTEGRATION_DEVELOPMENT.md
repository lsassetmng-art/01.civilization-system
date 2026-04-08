# ============================================================
# EVENT INTEGRATION DEVELOPMENT
# ============================================================

status: canonical
layer: development
domain: integration
subdomain: event-integration
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines development guidance for event-driven integration contracts.

development_rules:
- Keep live event routing separate from replay event reading.
- Require replay label validation in code, not presentation layer only.
- Keep audit/history trace reads separate from live event feed.
- Never allow replay payload to masquerade as current live event.

test_focus:
- live event routing
- replay label enforcement
- replay/history authorization
- live/replay separation
- trace emission
- denial on unlabeled replay

anti_patterns:
- replay events streamed through live feed adapter
- replay label added only in UI
- audit trace endpoint sharing live subscription handler

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
