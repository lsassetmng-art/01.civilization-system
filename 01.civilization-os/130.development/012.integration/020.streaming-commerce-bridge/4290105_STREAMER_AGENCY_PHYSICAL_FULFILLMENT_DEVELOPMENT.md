# ============================================================
# STREAMER AGENCY PHYSICAL FULFILLMENT
# DEVELOPMENT
# ============================================================

status: draft
layer: development
domain: 012.integration

# BUILD ORDER

1. define fulfillment schema
2. add shipment owner resolution
3. add tracking state machine
4. add delivery completion hook

# TESTS

- non-shippable order rejection
- invalid shipment transition rejection
