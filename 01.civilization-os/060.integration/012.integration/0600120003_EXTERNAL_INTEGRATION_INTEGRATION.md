# ============================================================
# EXTERNAL INTEGRATION INTEGRATION
# ============================================================

status: canonical
layer: integration
domain: integration
subdomain: external-integration
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines self-integration behavior for external integration contracts.

scope:
Covers export of external contract metadata,
external proposal-path metadata,
historical external contract traces,
and protection against authority inflation by metadata.

required_behavior:
- Support external contract metadata projection where allowed.
- Support proposal-path metadata export.
- Support historical external contract trace export.
- Prevent metadata from implying authority or ownership transfer not granted.

projection_classes:
- external_contract_summary
- external_proposal_metadata
- historical_external_contract_trace
- audit_external_trace

validation_rules:
- external contract ref is required.
- historical export requires historical flag.
- metadata must not imply more authority than declared.
- proposal metadata must remain non-mutating.

failure_codes:
- EXTERNAL_META_INT_CONTRACT_REF_MISSING
- EXTERNAL_META_INT_HISTORICAL_FLAG_REQUIRED
- EXTERNAL_META_INT_AUTHORITY_INFLATION_DENIED

example_scenarios:
- An external-facing spec viewer sees contract summary but not hidden authority basis.
