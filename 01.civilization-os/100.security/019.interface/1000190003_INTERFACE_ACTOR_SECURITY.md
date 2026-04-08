# ============================================================
# 1000190003 INTERFACE ACTOR SECURITY
# ============================================================

status: canonical
layer: security
domain: interface
scope: 1000190003.interface.actor.security
system: civilization-os
owner: Boss
prepared_by: Zero

## purpose
Defines security controls for 1000190003 INTERFACE ACTOR SECURITY inside 019.interface.

## security_objectives
- protect actor scope
- protect route scope
- protect target binding scope
- protect masked outputs
- prevent privilege widening through interface shortcuts

## trust_boundary
Interface must distinguish
viewer,
operator,
reviewer,
approver,
and adapter trust positions.

## access_rules
- actor entitlement must be known
- route entitlement must be known
- target binding must be allowed
- output scope must be bounded
- masked outputs must remain masked

## masking_rules
When masking is required,
screen output must remain clearly bounded
and must not resemble full-authority output.

## audit_rules
Security-relevant interface actions
must remain auditable without exposing more data
than the audit path requires.

## failure_codes
- INTERFACE_SEC_ACTOR_DENIED
- INTERFACE_SEC_ROUTE_DENIED
- INTERFACE_SEC_BINDING_DENIED
- INTERFACE_SEC_SCOPE_DENIED
- INTERFACE_SEC_MASK_REQUIRED

## review_checklist
- trust boundary is explicit
- access rules are explicit
- masking rules are explicit
- audit rules are explicit
- denial behavior is explicit

## state_model
Security must distinguish
authorized access,
masked access,
review-only access,
operator-restricted access,
and denied access.

## actor_matrix
- viewer is least privilege
- operator is bounded action privilege
- reviewer is bounded review privilege
- approver is bounded approval privilege
- adapter is bounded system privilege

## review_notes
Security completeness requires
trust-boundary clarity,
access-rule clarity,
masking clarity,
and denial clarity.

## escalation_rules
Security-relevant ambiguity must escalate to review,
must preserve denial-by-default behavior,
must keep masking boundaries intact,
and must not widen privilege through interface shortcuts.

## acceptance_criteria
This security subject is accepted only when
actor scope,
route scope,
masking behavior,
denial behavior,
and audit usefulness
are all explicit and testable.
