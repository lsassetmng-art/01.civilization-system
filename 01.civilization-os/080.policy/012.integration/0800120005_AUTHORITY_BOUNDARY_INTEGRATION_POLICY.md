# ============================================================
# AUTHORITY BOUNDARY INTEGRATION POLICY
# ============================================================

status: canonical
layer: policy
domain: integration
subdomain: authority-boundary-integration
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines policy rules for authority-boundary integration contracts.

scope:
Covers observe_only, projected_consume,
proposal_only, bounded_sync,
and audit_only boundary policies.

policy_focus:
- prohibition of authority inflation
- explicit authority basis for bounded_sync
- proposal_only non-mutation guarantee
- audit_only non-mutation guarantee
- retention of authority-boundary trace

allowed_denied_matrix:
- observe_only + read -> allowed
- observe_only + mutate -> denied
- projected_consume + bounded read/consume -> allowed
- proposal_only + canonical mutation -> denied
- bounded_sync + no authority -> denied
- audit_only + mutation -> denied

validation_rules:
- authority_boundary_class is required.
- bounded_sync requires authority basis.
- proposal_only must remain non-mutating until authorized path is completed.
- audit_only must remain non-mutating.
- projected metadata must not imply ungranted authority.

failure_codes:
- AUTH_BOUNDARY_POLICY_CLASS_MISSING
- AUTH_BOUNDARY_POLICY_AUTHORITY_REQUIRED
- AUTH_BOUNDARY_POLICY_AUTHORITY_INFLATION_DENIED
- AUTH_BOUNDARY_POLICY_PROPOSAL_MUTATION_DENIED
- AUTH_BOUNDARY_POLICY_AUDIT_MUTATION_DENIED

example_scenarios:
- A proposal-only import may be preserved for review but cannot mutate canonical truth.
- An observe-only consumer can never gain control simply by receiving projected metadata.
