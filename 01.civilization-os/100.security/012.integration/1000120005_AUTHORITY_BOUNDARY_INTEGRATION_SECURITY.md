# ============================================================
# AUTHORITY BOUNDARY INTEGRATION SECURITY
# ============================================================

status: canonical
layer: security
domain: integration
subdomain: authority-boundary-integration
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines security rules for authority-boundary integration contracts.

scope:
Covers security for observe_only,
projected_consume, proposal_only,
bounded_sync, and audit_only boundary classes.

security_focus:
- prevention of authority inflation
- prevention of observe_only mutation
- proposal-only isolation
- bounded-sync authorization
- audit-only non-mutation guarantee

actor_matrix:
- observe_only consumer -> projected read only
- projected_consume consumer -> bounded read/consume only
- restricted_integration_operator -> bounded_sync where authorized
- high_trust_operator -> higher-impact sync or canonical write only where explicitly authorized
- auditor -> audit_only traces where authorized

decision_table:
- observe_only + read -> allow projection only
- observe_only + mutate -> block
- proposal_only + import -> accept only into isolated proposal lane
- bounded_sync + no authority -> block
- audit_only + mutation -> block
- projected_consume + hidden authority implication -> block

validation_rules:
- authority_boundary_class is required.
- bounded_sync requires explicit authority basis.
- proposal-only path must remain isolated from canonical mutation.
- audit-only path must remain non-mutating.
- projected outputs must not imply or create new authority.

failure_codes:
- AUTH_BOUNDARY_SEC_CLASS_MISSING
- AUTH_BOUNDARY_SEC_OBSERVE_MUTATION_DENIED
- AUTH_BOUNDARY_SEC_PROPOSAL_ISOLATION_REQUIRED
- AUTH_BOUNDARY_SEC_BOUNDED_SYNC_DENIED
- AUTH_BOUNDARY_SEC_AUDIT_MUTATION_DENIED
- AUTH_BOUNDARY_SEC_AUTHORITY_INFLATION_DENIED

example_scenarios:
- A proposal-only import is accepted for review but cannot mutate source-of-truth records.
- An observe-only consumer attempting mutation is blocked immediately and traced.
