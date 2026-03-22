# CIVILIZATION_SYNC_EVENT_INBOX_MODEL

status: canonical
layer: model
domain: integration
owner: Boss
prepared_by: Zero

## PURPOSE
Represent inbound sync events consumed by CivilizationOS.

## FIELDS
- civilization_sync_event_inbox_id
- source_system
- event_type
- aggregate_type
- aggregate_id
- payload_json
- consume_state
- attempt_count
- next_retry_at
- received_at
- consumed_at
