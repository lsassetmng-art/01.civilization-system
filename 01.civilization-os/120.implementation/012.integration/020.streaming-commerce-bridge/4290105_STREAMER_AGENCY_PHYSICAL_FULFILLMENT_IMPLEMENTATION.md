# ============================================================
# STREAMER AGENCY PHYSICAL FULFILLMENT
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 012.integration

# 1. PURPOSE

Defines fulfillment execution for physical goods in streamer commerce flows.

# 2. STORAGE

- fulfillment_id
- order_ref
- seller_company_id
- fulfillment_partner_ref
- shipment_status
- tracking_payload
- delivered_at

# 3. EXECUTION

1. validate order and shippable goods
2. resolve fulfillment owner
3. create shipment record
4. update tracking state
5. write delivery completion

# 4. FAILURE HANDLING

Fail closed on non-shippable order, missing fulfillment owner, or invalid shipment transition.
