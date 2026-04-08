# ============================================================
# CIVILIZATION IDEMPOTENCY POLICY
# ============================================================

status: canonical
layer: policy
domain: detail
scope: 0800010.civilization.idempotency.policy
system: civilization-os
owner: Boss
prepared_by: Zero

## purpose
Defines the policy constraint for CIVILIZATION IDEMPOTENCY POLICY
inside the 040.detail domain.

## required_behavior
- authority must be explicit
- disclosure must be explicit
- retention must be explicit
- denial behavior must be explicit
- replay and audit visibility must be policy-bound

## policy_rules
Policy exists to keep detail handling
bounded by authority,
purpose,
retention,
and reviewability
rather than convenience.

## authority_matrix
- truth-authoring actors may define source truth
- projection actors may not redefine source truth
- replay actors may inspect but not mutate source truth
- approval actors may approve or deny gated paths
- audit actors may inspect preserved evidence

## retention_matrix
Current detail,
historical detail,
audit traces,
and dead-letter records
must have distinct retention expectations.

## disclosure_matrix
Disclosure must distinguish
full detail,
masked detail,
review-only detail,
and denied detail.

## allowed_denied_matrix
- allow when actor, purpose, and mode match policy
- deny when authority origin is unclear
- deny when replay is outside policy scope
- deny when masking or retention rule is missing
- deny when compatibility widens authority meaning

## failure_codes
- DETAIL_POLICY_AUTHORITY_UNCLEAR
- DETAIL_POLICY_DISCLOSURE_BLOCKED
- DETAIL_POLICY_RETENTION_UNDEFINED
- DETAIL_POLICY_REPLAY_DENIED
- DETAIL_POLICY_COMPATIBILITY_DENIED

## review_checklist
- authority matrix exists
- retention matrix exists
- disclosure matrix exists
- allowed/denied matrix exists
- fail-closed policy exists

## state_model
Policy must distinguish
allowed access,
masked access,
review-only access,
retained evidence,
and denied access
as separate policy outcomes.

## transition_rules
A policy transition must be justified by
actor role,
purpose,
authority source,
retention rule,
and disclosure rule.
Unjustified transitions are denied.

## actor_matrix
- authority actor establishes legitimate source
- policy actor constrains access and handling
- reviewer handles approvals and escalations
- auditor inspects preserved evidence under policy
- consumer receives only the permitted form

## review_notes
Policy is complete only when
authority,
disclosure,
retention,
replay,
and denial behavior
are all explicit.
