# ============================================================
# INTERNAL INTEGRATION DEVELOPMENT
# ============================================================

status: canonical
layer: development
domain: integration
subdomain: internal-integration
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines development guidance for internal integration contracts.

development_rules:
- Keep internal read and action-capable paths separate.
- Require effect_scope validation for any internal action-capable contract.
- Keep audit reads on dedicated read-only paths.
- Do not treat "internal" as equivalent to unrestricted.

test_focus:
- source/target scope validation
- effect_scope enforcement
- read/action separation
- audit-only reads
- hidden mutation denial
- denial trace emission

anti_patterns:
- internal read endpoint also mutating hidden state
- effect_scope stored only in comments/docs, not validated
- audit trace exposed through ordinary internal read handler

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
