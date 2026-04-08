# ============================================================
# AUTHORITY BOUNDARY INTEGRATION FLOW
# ============================================================

status: canonical
layer: flow
domain: integration
subdomain: authority-boundary-integration
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines process flow for authority-boundary integration handling.

scope:
Covers observe-only, projected-consume,
bounded-sync, proposal-only,
and audit-only authority paths.

required_behavior:
- Resolve authority boundary class.
- Route request according to boundary class.
- Block mutation from observe-only or audit-only paths.
- Route unauthorized write attempts to rejection.
- Route proposal-only imports away from canonical write path.

flow_state_model:
authority_boundary_flow_state:
- requested
- boundary_resolved
- authority_checked
- proposal_routed
- bounded_sync_ready
- delivered
- blocked

authority_boundary_sequence:
1. receive integration action
2. resolve authority boundary class
3. check authority basis where needed
4. route to observe, projected consume, bounded sync, proposal, or audit path
5. deliver or block

decision_matrix:
- observe_only + read -> deliver projection
- observe_only + mutate -> block
- proposal_only + import -> proposal_routed
- bounded_sync + valid authority -> bounded_sync_ready then deliver
- audit_only + mutate -> block

failure_codes:
- AUTH_BOUNDARY_FLOW_CLASS_MISSING
- AUTH_BOUNDARY_FLOW_AUTHORITY_REQUIRED
- AUTH_BOUNDARY_FLOW_OBSERVE_MUTATION_DENIED
- AUTH_BOUNDARY_FLOW_PROPOSAL_MUTATION_DENIED
- AUTH_BOUNDARY_FLOW_AUDIT_MUTATION_DENIED
- AUTH_BOUNDARY_FLOW_OVERWRITE_DENIED

example_scenarios:
- A proposal-only external import is preserved as proposal data.
- A mutate request from observe-only boundary is blocked immediately.
