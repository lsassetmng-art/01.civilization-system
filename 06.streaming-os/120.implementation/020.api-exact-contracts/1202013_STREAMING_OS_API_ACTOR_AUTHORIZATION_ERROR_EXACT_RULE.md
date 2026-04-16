# ============================================================
# STREAMING OS API ACTOR / AUTHORIZATION ERROR EXACT RULE
# ============================================================

status: canonical-draft
system: streaming-os
domain: api-exact-contracts
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document defines actor and authorization failure semantics
for StreamingOS exact APIs.

# ============================================================
# 2. ERROR DISTINCTION
# ============================================================

recommended_distinctions:
- unauthorized_actor
  -> actor identity missing,
     invalid,
     or not trusted enough to enter the endpoint
- forbidden_action
  -> actor is known,
     but not allowed to perform this action on this target
- governance_blocked
  -> action is blocked because target state forbids mutation
- review_required
  -> action cannot continue because review gate has not passed
- state_conflict
  -> action conflicts with current target lifecycle or mutation state

# ============================================================
# 3. RESPONSE EXAMPLES
# ============================================================

unauthorized_actor_response:
- success: false
- error_code: unauthorized_actor
- error_title: Actor is not authorized
- error_detail: Actor identity is missing or invalid for this endpoint

forbidden_action_response:
- success: false
- error_code: forbidden_action
- error_title: Action is not permitted
- error_detail: Actor cannot perform this action on the requested target

governance_blocked_response:
- success: false
- error_code: governance_blocked
- error_title: Target is governance-blocked
- error_detail: Current target state forbids this mutation

review_required_response:
- success: false
- error_code: review_required
- error_title: Review is required before this action
- error_detail: The requested action cannot continue until review passes

# ============================================================
# 4. CALLER RULE
# ============================================================

callers should be able to distinguish:
- authentication/identity failure
- permission failure
- lifecycle/governance failure
- review-gate failure
- semantic state conflict

These should not be collapsed into one generic forbidden result.

# ============================================================
# 5. CANONICAL FIXED STATEMENT
# ============================================================

StreamingOS exact APIs
shall keep actor,
authorization,
governance,
review,
and state-conflict failures
as distinct error semantics.

