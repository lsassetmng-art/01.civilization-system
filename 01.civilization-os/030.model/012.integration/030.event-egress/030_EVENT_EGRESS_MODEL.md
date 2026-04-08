# ============================================================
# EVENT EGRESS
# MODEL
# ============================================================

status: draft
layer: model
domain: 012.integration
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for event egress structures.

# 2. CORE ENTITIES

- egress_channel
- egress_event_record
- egress_delivery_result
- egress_status

# 3. STATE MODEL

egress_channel:
- egress_channel_id
- integration_definition_id
- channel_code
- channel_scope
- channel_status

egress_event_record:
- egress_event_record_id
- egress_channel_id
- event_code
- event_payload_ref
- event_status

egress_delivery_result:
- egress_delivery_result_id
- egress_event_record_id
- result_code
- result_reason
- result_status

egress_status:
- egress_status_id
- egress_channel_id
- active_flag
- blocked_flag
- changed_at

# 4. INTEGRITY RULES

- event record and delivery result must preserve channel identity
- egress scope must be explicit
- active and blocked state must be explicit
- hidden egress mutation is prohibited

