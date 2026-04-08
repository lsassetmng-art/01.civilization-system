# ============================================================
# INTEGRATION CORE INTEGRATION
# ============================================================

status: canonical
layer: integration
domain: integration
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines self-integration behavior for core integration contracts.

scope:
Covers export of contract metadata,
authority basis summaries,
projection rules, historical contract traces,
and proposal-path metadata.

required_behavior:
- Support internal contract-metadata projection.
- Support audit-safe historical contract export.
- Support non-mutating proposal-path export.
- Prevent exported metadata from implying ungranted authority.

projection_classes:
- internal_contract_metadata
- historical_contract_trace
- proposal_path_metadata
- audit_contract_trace

validation_rules:
- contract_ref is required.
- historical export requires historical flag.
- authority-path summary must not imply more authority than source contract grants.
- proposal-path metadata must remain non-mutating.

failure_codes:
- INTEGRATION_META_INT_CONTRACT_REF_MISSING
- INTEGRATION_META_INT_HISTORICAL_FLAG_REQUIRED
- INTEGRATION_META_INT_AUTHORITY_IMPLICATION_VIOLATION

example_scenarios:
- An audit tool receives historical contract trace.
- A proposal-path metadata export shows proposal status only, not canonical ownership.
