# ============================================================
# OPERATION MODE DEVELOPMENT
# ============================================================

status: canonical
layer: development
domain: mode
subdomain: operation-mode
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines development guidance for operation-facing modes.

development_rules:
- Separate public service-impact projection from internal operation detail generation.
- Keep degraded/emergency switch authorization explicit.
- Preserve maintenance exit-basis checks.
- Do not let historical incident reads influence current operation selection.

test_focus:
- operation_scope lookup
- degraded/emergency switching
- public-safe service-impact projection
- maintenance exit-basis validation
- history path isolation
- invalidation after operation-mode changes

anti_patterns:
- emergency internals serialized through public projector
- maintenance mode treated as ordinary normal mode
- current selection reading from incident-history storage

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
