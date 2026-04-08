# ============================================================
# TRANSITION MODE DEVELOPMENT
# ============================================================

status: canonical
layer: development
domain: mode
subdomain: transition-mode
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines development guidance for transition-facing modes.

development_rules:
- Keep transition-only outputs separate from stable-state outputs.
- Require exit_condition validation in code, not comments.
- Require rollback or recovery support for critical transitions.
- Never reuse completed transition history as current active state.

test_focus:
- source/target state validation
- exit_condition enforcement
- rollback/recovery requirement
- transition/stable projection separation
- completed-history reads
- denied critical transition without recovery path

anti_patterns:
- staged_activation rendered as fully active stable state
- replay/completed transition returned from active transition resolver
- rollback references treated as optional for critical migrations

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
