# ============================================================
# AUTHORITY BOUNDARY INTEGRATION RUNTIME
# ============================================================

status: canonical
layer: runtime
domain: integration
subdomain: authority-boundary-integration
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines runtime behavior for authority-boundary integration.

scope:
Covers observe-only, projected-consume,
bounded-sync, proposal-only, and audit-only runtime enforcement.

runtime_rules:
- Runtime must enforce authority boundary before any mutating acceptance.
- observe_only must never enable control.
- proposal_only must never mutate canonical truth directly.
- audit_only must remain non-mutating.
- bounded_sync requires explicit authority basis.

required_behavior:
- Resolve effective authority boundary class.
- Enforce non-mutating observation paths.
- Allow bounded sync only with explicit authority.
- Reject unauthorized overwrite and mutation attempts.

state_model:
authority_boundary_runtime_state:
- observe_only
- projected_consume
- bounded_sync
- proposal_only
- audit_only
- blocked

validation_rules:
- authority basis is required for bounded_sync.
- observe_only must not permit control mutation.
- proposal_only must not write canonical truth directly.
- audit_only must not mutate source or target truth.
- overwrite attempt without authority is prohibited.

transition_rules:
- observe_only -> projected_consume
- projected_consume -> bounded_sync where authorized
- any invalid mutation path -> blocked

decision_matrix:
- observe_only + read request -> allow read projection
- observe_only + mutate request -> block
- proposal_only + import request -> allow proposal path only
- bounded_sync + valid authority -> allow bounded sync
- audit_only + mutate request -> block

failure_codes:
- AUTH_BOUNDARY_RT_AUTHORITY_REQUIRED
- AUTH_BOUNDARY_RT_OBSERVE_CONTROL_DENIED
- AUTH_BOUNDARY_RT_PROPOSAL_MUTATION_DENIED
- AUTH_BOUNDARY_RT_AUDIT_MUTATION_DENIED
- AUTH_BOUNDARY_RT_OVERWRITE_DENIED

example_scenarios:
- An external observer receives read projection only.
- A sync request is blocked because explicit authority basis is missing.
