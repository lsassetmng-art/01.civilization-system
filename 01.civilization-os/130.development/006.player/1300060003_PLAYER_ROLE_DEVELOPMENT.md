# ============================================================
# PLAYER ROLE DEVELOPMENT
# ============================================================

status: canonical
layer: development
domain: player
subdomain: player-role
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines development guidance for player roles.

development_rules:
- Keep effective-role selection separate from public-safe role summary projection.
- Require explicit authority for elevated-role assignment or correction.
- Treat secondary-role coexistence as structured logic, not informal app-level convention.
- Keep historical role traces out of live role selectors.

test_focus:
- effective-role selection
- role coexistence validation
- elevated-role authorization
- restricted-role filtering
- history reads
- suspended-effect behavior

anti_patterns:
- public summary implying elevated capability
- secondary-role support hardcoded in UI only
- historical role trace used to infer current effective role

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
