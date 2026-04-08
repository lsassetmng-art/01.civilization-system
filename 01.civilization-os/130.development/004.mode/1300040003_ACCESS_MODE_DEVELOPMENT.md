# ============================================================
# ACCESS MODE DEVELOPMENT
# ============================================================

status: canonical
layer: development
domain: mode
subdomain: access-mode
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines development guidance for access-facing modes.

development_rules:
- Enforce least-privilege before any feature or route expansion.
- Keep onboarding_guided behavior distinct from restricted_operator logic.
- Keep audit_review checks separate from standard read checks.
- Never use access-mode output as a substitute for permission grants.

test_focus:
- actor_class mapping
- anonymous least-privilege behavior
- onboarding/operator separation
- audit authority enforcement
- privilege escalation denial
- audit/history path separation

anti_patterns:
- onboarding flow reusing operator-only backend path
- access mode used as direct permission token
- audit mode unlocked by UI route only

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
