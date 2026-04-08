# ============================================================
# 1000400005 RELATIONSHIP DETAIL SECURITY
# ============================================================

status: canonical
layer: security
domain: detail
scope: 1000400005.relationship.detail.security
system: civilization-os
owner: Boss
prepared_by: Zero

## purpose
Defines the security control rule for 1000400005 RELATIONSHIP DETAIL SECURITY
inside the 040.detail domain.

## security_objectives
- protect authority origin
- protect masked views
- protect replay paths
- protect audit evidence
- prevent privilege widening

## trust_boundary
Security must distinguish
truth origin,
transport,
projection,
replay,
and review actors
as separate trust positions.

## access_rules
Access must be actor-based,
purpose-based,
and mode-aware.
A valid actor for current detail
is not automatically valid for replay or audit detail.

## masking_rules
When masking is required,
security must ensure the masked output
cannot be misread as full-authority detail.

## audit_rules
Security-relevant detail access
must remain auditable without exposing more data
than the audit path requires.

## failure_codes
- DETAIL_SEC_ACCESS_DENIED
- DETAIL_SEC_TRUST_BOUNDARY_VIOLATION
- DETAIL_SEC_MASKING_REQUIRED
- DETAIL_SEC_REPLAY_SCOPE_DENIED
- DETAIL_SEC_AUDIT_GAP

## review_checklist
- trust boundary is explicit
- access rules are explicit
- masking rules are explicit
- audit rules are explicit
- denial behavior is explicit

## state_model
Security handling must distinguish
authorized access,
masked access,
audit access,
replay-limited access,
and denied access.
These states must never be merged implicitly.

## transition_rules
Security transitions must preserve
trust boundary meaning,
access basis,
masking requirement,
and audit visibility.
Privilege widening is prohibited.

## actor_matrix
- requester asks for subject detail
- security guard evaluates entitlement
- masking control reduces exposure when required
- auditor inspects security-relevant access traces
- reviewer resolves exceptional access cases

## review_notes
Security completeness requires
trust boundary clarity,
access control clarity,
masking clarity,
and security-audit clarity.
