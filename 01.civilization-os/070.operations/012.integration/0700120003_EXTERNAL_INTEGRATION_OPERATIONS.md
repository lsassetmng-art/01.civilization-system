# ============================================================
# EXTERNAL INTEGRATION OPERATIONS
# ============================================================

status: canonical
layer: operations
domain: integration
subdomain: external-integration
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines operational handling for external integration contracts.

scope:
Covers public export operation,
restricted export review,
external proposal import,
sync-candidate handling,
and containment of external overwrite incidents.

required_behavior:
- Support public export operation.
- Support review of restricted exports.
- Support proposal-only import handling.
- Support containment of unauthorized overwrite attempts.
- Support historical external contract audit.

state_model:
external_integration_operational_state:
- prepared
- active
- restricted_review
- proposal_only
- contained
- audit_review
- archived

validation_rules:
- projection_scope is required.
- restricted export requires authority basis.
- proposal-only imports must not be routed to canonical overwrite.
- overwrite incident requires containment and trace.

transition_rules:
- prepared -> active
- active -> restricted_review
- restricted_review -> active
- prepared -> proposal_only
- active -> contained
- contained -> audit_review
- active -> archived

failure_codes:
- EXTERNAL_INT_OP_PROJECTION_SCOPE_MISSING
- EXTERNAL_INT_OP_AUTHORITY_REQUIRED
- EXTERNAL_INT_OP_OVERWRITE_INCIDENT
- EXTERNAL_INT_OP_TRACE_MISSING

example_scenarios:
- A restricted external export remains in restricted_review until authority basis is approved.
