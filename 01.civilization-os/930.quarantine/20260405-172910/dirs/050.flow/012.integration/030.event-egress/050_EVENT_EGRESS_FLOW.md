# ============================================================
# EVENT EGRESS
# FLOW
# ============================================================

status: draft
layer: flow
domain: 012.integration
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for event egress handling.

# 2. TRIGGER

- egress publish request
- delivery retry
- egress channel update
- block/unblock request

# 3. MAIN FLOW

1. create or resolve egress_channel
2. create egress_event_record
3. deliver event to target endpoint
4. persist egress_delivery_result
5. persist egress_status where applicable
6. emit audit trace

# 4. FAILURE FLOW

- missing egress scope -> reject
- invalid delivery or result state -> reject
- hidden egress mutation -> fail closed

# 5. OUTPUT

- egress channel state
- event/delivery state
- audit record

