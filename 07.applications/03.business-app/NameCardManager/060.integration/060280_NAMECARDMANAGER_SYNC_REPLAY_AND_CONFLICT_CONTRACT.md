# ============================================================
# NAMECARDMANAGER SYNC REPLAY AND CONFLICT CONTRACT
# ============================================================

status: canonical
layer: integration
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Fixes exact replay, retry, and conflict semantics for initial implementation.

pending_operation_states:
- queued
- sending
- applied
- conflict
- failed_retryable
- failed_terminal

rules:
- operation_id is uuid and unique per local queued operation
- idempotency_key is mandatory for every outgoing sync operation
- replay order is ascending queued_at
- local compression of multiple operations on the same record is not performed in Phase A
- applied operation must never be replayed
- failed_retryable may be replayed
- failed_terminal requires explicit user or operator action
- conflict state requires explicit review path

canonical_version_rules:
- base_canonical_version is required for update/delete
- create may pass null base_canonical_version
- server canonical_version mismatch produces conflict result_state

conflict_resolution_rules:
- server wins is the default storage truth rule
- local wins is not allowed automatically
- manual merge required for record conflicts where user-entered values differ
- delete/update conflict is treated as conflict
- image attachment conflict follows parent record conflict

sync_result_states:
- applied
- conflict
- failed_retryable
- failed_terminal

retry_rules:
- retryable failures include transient network and temporary server unavailable
- terminal failures include invalid payload and forbidden action
- retry backoff is implementation-defined but required

ui_requirements:
- conflict item must be visible
- retryable item must be visible
- terminal failure must expose blocking reason
