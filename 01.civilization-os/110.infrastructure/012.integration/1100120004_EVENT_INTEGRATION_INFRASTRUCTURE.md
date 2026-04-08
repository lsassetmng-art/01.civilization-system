# ============================================================
# EVENT INTEGRATION INFRASTRUCTURE
# ============================================================

status: canonical
layer: infrastructure
domain: integration
subdomain: event-integration
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines infrastructure support for event-driven integration contracts.

scope:
Covers live event contract storage,
replay event storage,
event trace support,
and separation of current-live and historical replay paths.

infrastructure_focus:
- event contract index
- live event handoff store
- replay/history event store
- replay label storage
- event trace log

storage_contract:
event_integration_fields:
- contract_ref
- event_ref
- delivery_mode
- historical_flag
- lifecycle_state
- revision_ref

index_strategy:
- by contract_ref
- by event_ref
- by delivery_mode
- by historical_flag
- by lifecycle_state

cache_rules:
- live event handoff must never share cache with replay event outputs
- replay labels must be resolved from replay/history partition only
- restricted event traces use audit partition

failure_codes:
- EVENT_INT_INFRA_EVENT_INDEX_MISSING
- EVENT_INT_INFRA_LIVE_REPLAY_PARTITION_CONFLICT
- EVENT_INT_INFRA_REPLAY_LABEL_LOOKUP_FAILED
- EVENT_INT_INFRA_TRACE_LOG_UNAVAILABLE

example_scenarios:
- A replay event request is served only from replay/history storage and not from live handoff infrastructure.
