# ============================================================
# EVENT INGRESS
# MODEL
# ============================================================

status: draft
layer: model
domain: 012.integration
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for event ingress structures.

# 2. CORE ENTITIES

- ingress_channel
- ingress_event_record
- ingress_validation_result
- ingress_status

# 3. STATE MODEL

ingress_channel:
- ingress_channel_id
- integration_definition_id
- channel_code
- channel_scope
- channel_status

ingress_event_record:
- ingress_event_record_id
- ingress_channel_id
- event_code
- event_payload_ref
- event_status

ingress_validation_result:
- ingress_validation_result_id
- ingress_event_record_id
- result_code
- result_reason
- result_status

ingress_status:
- ingress_status_id
- ingress_channel_id
- active_flag
- blocked_flag
- changed_at

# 4. INTEGRITY RULES

- event record and validation result must preserve channel identity
- ingress scope must be explicit
- active and blocked state must be explicit
- hidden ingress mutation is prohibited

