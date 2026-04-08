# ============================================================
# EVENT INTEGRATION INTEGRATION
# ============================================================

status: canonical
layer: integration
domain: integration
subdomain: event-integration
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines self-integration behavior for event integration contracts.

scope:
Covers export of live event-contract metadata,
replay event-contract metadata,
trace path export,
and protection against unlabeled replay confusion.

required_behavior:
- Support live event-contract metadata projection.
- Support replay event metadata export with explicit replay labeling.
- Support audit trace export.
- Prevent unlabeled replay metadata export.

projection_classes:
- live_event_contract_summary
- replay_event_contract_summary
- audit_event_contract_trace

validation_rules:
- event contract ref is required.
- replay metadata requires replay or historical label.
- trace path reference is required for audit trace export.

failure_codes:
- EVENT_META_INT_CONTRACT_REF_MISSING
- EVENT_META_INT_REPLAY_LABEL_REQUIRED
- EVENT_META_INT_TRACE_PATH_REQUIRED

example_scenarios:
- A replay inspector receives replay_event_contract_summary with explicit historical labeling.
