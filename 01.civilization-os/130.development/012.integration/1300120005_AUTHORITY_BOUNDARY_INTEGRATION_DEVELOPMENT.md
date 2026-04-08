# ============================================================
# AUTHORITY BOUNDARY INTEGRATION DEVELOPMENT
# ============================================================

status: canonical
layer: development
domain: integration
subdomain: authority-boundary-integration
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines development guidance for authority-boundary integration contracts.

development_rules:
- Route observe_only, proposal_only, bounded_sync, and audit_only through distinct handlers.
- Require explicit authority for bounded_sync and any write-capable escalation.
- Keep proposal_only handlers physically separated from write-capable modules.
- Do not let projected metadata imply authority that is not granted in source contract.
- Keep audit_only paths strictly non-mutating.

test_focus:
- authority_boundary_class routing
- observe_only mutation denial
- proposal-only isolation
- bounded_sync authority enforcement
- audit-only non-mutation guarantee
- authority inflation denial
- trace emission for denied escalation

anti_patterns:
- proposal_only payload upgraded to sync candidate without explicit reclassification logic
- observe_only consumer routed into shared mutating middleware
- audit-only path exposing actionable controls
- projected metadata reused as authority token

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
