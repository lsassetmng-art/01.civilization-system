# ============================================================
# INTERNAL INTEGRATION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: integration
subdomain: internal-integration
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines internal integration architecture.

scope:
Covers contract-based exchange between internal domains,
internal layers, internal operational modules,
and internal viewers within CivilizationOS.

design_intent:
Internal integration must still be governed.
Internal does not mean unrestricted.

canonical_rules:
- Internal integration must remain typed.
- Internal integration must preserve source ownership.
- Internal integration must respect visibility and authority boundaries.
- Internal integration must not allow undocumented side-channel mutation.

required_behavior:
- Support internal read contracts.
- Support internal action/request contracts.
- Support internal review/audit contracts.
- Support rejection and traceability.

state_model:
internal_contract_class:
- internal_read
- internal_action_request
- internal_review
- internal_audit

validation_rules:
- source and target internal scopes are required.
- internal action request must declare intended effect scope.
- internal audit contract must declare inspection basis.
- hidden mutation via internal connector path is prohibited.

transition_rules:
- reviewed -> active
- active -> suspended
- suspended -> active
- active -> archived

failure_codes:
- INTERNAL_INTEGRATION_SCOPE_MISSING
- INTERNAL_INTEGRATION_EFFECT_SCOPE_MISSING
- INTERNAL_INTEGRATION_AUDIT_BASIS_MISSING
- INTERNAL_INTEGRATION_HIDDEN_MUTATION_DENIED

example_scenarios:
- A work UI consumes internal_read contract from an activity domain.
- An audit viewer consumes internal_audit contract for historical inspection.
