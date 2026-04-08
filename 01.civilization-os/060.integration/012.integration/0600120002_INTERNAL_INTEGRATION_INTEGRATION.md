# ============================================================
# INTERNAL INTEGRATION INTEGRATION
# ============================================================

status: canonical
layer: integration
domain: integration
subdomain: internal-integration
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines self-integration behavior for internal integration contracts.

scope:
Covers export of internal contract metadata,
internal effect-scope summaries,
internal review traces,
and rejection of metadata that would hide mutation scope.

required_behavior:
- Support internal contract metadata projection.
- Support internal audit and review trace export.
- Ensure effect scope remains explicit.
- Reject metadata projection that obscures hidden mutation risk.

projection_classes:
- internal_contract_summary
- internal_review_trace
- internal_audit_trace

validation_rules:
- internal contract ref is required.
- effect scope must remain explicit for action-capable contracts.
- metadata must not conceal mutation semantics.

failure_codes:
- INTERNAL_META_INT_CONTRACT_REF_MISSING
- INTERNAL_META_INT_EFFECT_SCOPE_MISSING
- INTERNAL_META_INT_HIDDEN_MUTATION_METADATA_DENIED

example_scenarios:
- A governance viewer receives an internal review trace for a contract change.
