# ============================================================
# AUTHORITY BOUNDARY INTEGRATION INTEGRATION
# ============================================================

status: canonical
layer: integration
domain: integration
subdomain: authority-boundary-integration
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines self-integration behavior for authority-boundary contracts.

scope:
Covers export of authority-boundary metadata,
bounded-sync summaries,
proposal-only metadata,
audit-only traces,
and rejection of authority inflation through metadata projection.

required_behavior:
- Support authority-boundary metadata export for authorized consumers.
- Support proposal-only metadata export.
- Support audit-only trace export.
- Prevent projection from creating new authority semantics.

projection_classes:
- authority_boundary_summary
- bounded_sync_summary
- proposal_only_metadata
- audit_boundary_trace

validation_rules:
- authority-boundary contract ref is required.
- exported summary must not imply more authority than source contract grants.
- proposal-only metadata must remain non-mutating.
- audit-boundary trace requires audit scope.

failure_codes:
- AUTH_BOUNDARY_META_INT_CONTRACT_REF_MISSING
- AUTH_BOUNDARY_META_INT_AUTHORITY_INFLATION_DENIED
- AUTH_BOUNDARY_META_INT_AUDIT_SCOPE_REQUIRED

example_scenarios:
- A contract governance tool receives bounded_sync_summary without receiving source ownership itself.
