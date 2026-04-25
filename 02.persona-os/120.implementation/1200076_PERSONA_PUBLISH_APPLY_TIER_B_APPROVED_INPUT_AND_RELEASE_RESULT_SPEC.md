# PERSONA PUBLISH APPLY TIER B APPROVED INPUT AND RELEASE RESULT SPEC

status: tier-b-exactness-ready
system: PersonaOS
layer: implementation
confirmed_at: 20260418_182500

purpose:
Fixes the exact approved-input-only rule and release result semantics for publish_apply.

approved_input_sources:
- approved publish_request_id
- approved release_reference
- authorized release candidate reference where policy explicitly allows

publish_apply_preconditions:
- upstream decision is approved
- subject reference is resolvable
- release scope is valid
- required authority is present
- required lineage and policy checks are satisfied

publish_apply_results:
- publish_apply_succeeded
  - released artifact or released asset reference exists
- publish_apply_rejected
  - approved-input-only rule failed or policy blocked
- publish_apply_failed
  - operational failure prevented release application

release_result_rules:
- publish_apply_succeeded is the only upstream state allowed to feed released listing
- publish_apply must not treat candidate or pending state as released state
- publish_apply must not mutate canonical mutable truth as a generic side effect outside defined release application responsibility

