# ============================================================
# EXTERNAL INTEGRATION IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
domain: integration
subdomain: external-integration
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines implementation responsibilities for external integration contracts.

scope:
Covers public projection export,
restricted export projection,
proposal-only external intake,
bounded sync handling,
and external history/audit reads.

implementation_focus:
- external_contract_validator
- public_projection_filter
- restricted_projection_filter
- external_proposal_handler
- external_bounded_sync_handler
- external_history_reader
- external_trace_emitter

handler_contracts:
- export_public_projection(contract_ref, actor_scope) -> public_export_result
- export_restricted_projection(contract_ref, actor_scope, authority_context) -> restricted_export_result
- handle_external_proposal(payload, metadata) -> proposal_result
- handle_external_bounded_sync(payload, authority_context) -> sync_result
- read_external_integration_history(contract_ref, history_context) -> history_result

validation_rules:
- contract_ref is required.
- actor_scope is required for export.
- authority_context is required for restricted export or bounded sync.
- history_context is required for historical trace reads.
- proposal intake must not enter export filters or write-capable modules.

failure_codes:
- EXTERNAL_INT_IMPL_CONTRACT_REF_MISSING
- EXTERNAL_INT_IMPL_ACTOR_SCOPE_MISSING
- EXTERNAL_INT_IMPL_AUTHORITY_CONTEXT_REQUIRED
- EXTERNAL_INT_IMPL_PUBLIC_FILTER_FAILED
- EXTERNAL_INT_IMPL_PROPOSAL_HANDLER_FAILED
- EXTERNAL_INT_IMPL_HISTORY_READ_FAILED

example_scenarios:
- A public API export uses public_projection_filter only, while partner-restricted export uses restricted_projection_filter plus authority checks.

required_behavior:
- validate canonical input before execution
- keep restricted and public paths separated where applicable
- preserve historical reads as separate from live execution

implementation_components:
- validator
- resolver or router
- filter or guard
- history reader
- trace emitter

module_split:
- input validation module
- execution module
- filtering or guard module
- history module
- trace module

implementation_rules:
- validation precedes execution
- filtering precedes delivery
- history paths remain distinct from live paths
- denied actions emit stable failure codes and trace
