# ============================================================
# AUTHORITY BOUNDARY INTEGRATION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: integration
subdomain: authority-boundary-integration
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines authority-boundary integration architecture.

scope:
Covers authority ownership, approval basis,
cross-boundary control limitation,
auditability, and overwrite denial at integration boundaries.

design_intent:
The most important integration question is not transport,
but authority.
This architecture exists so that source ownership,
target allowance, and override denial remain explicit.

canonical_rules:
- Source authority must remain identifiable.
- Target allowance must remain bounded.
- Transport does not imply ownership transfer.
- Canonical overwrite requires explicit authority path.
- Auditability is mandatory for authority-sensitive transfer.

required_behavior:
- Support authority basis declaration.
- Support target allowance declaration.
- Support overwrite denial.
- Support audit trace.
- Support proposal path instead of unauthorized overwrite.

state_model:
authority_boundary_class:
- observe_only
- projected_consume
- bounded_sync
- proposal_only
- audit_only

validation_rules:
- authority_basis is required for bounded_sync.
- observe_only must not imply control.
- proposal_only must not mutate canonical truth directly.
- audit_only must remain non-mutating.
- overwrite request without authority is denied.

decision_matrix:
- observe_only -> read projection only
- projected_consume -> bounded consumption only
- bounded_sync -> sync allowed where explicit authority exists
- proposal_only -> canonical mutation denied
- audit_only -> inspection only

failure_codes:
- AUTH_BOUNDARY_AUTHORITY_BASIS_MISSING
- AUTH_BOUNDARY_OBSERVE_CONTROL_CONFLICT
- AUTH_BOUNDARY_PROPOSAL_MUTATION_DENIED
- AUTH_BOUNDARY_AUDIT_MUTATION_DENIED
- AUTH_BOUNDARY_CANONICAL_OVERWRITE_DENIED

example_scenarios:
- An external system may observe projected_consume data without owning source truth.
- An imported suggestion follows proposal_only path and cannot overwrite canonical records.
