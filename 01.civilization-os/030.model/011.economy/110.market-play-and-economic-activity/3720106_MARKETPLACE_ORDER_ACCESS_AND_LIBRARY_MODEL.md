# ============================================================
# MARKETPLACE ORDER ACCESS AND LIBRARY MODEL
# ============================================================

status: canonical
layer: model
scope: digital-marketplace
component: marketplace-order-access-and-library

owner: Boss
prepared_by: Zero


# ============================================================
# 1. ORDER FIELDS
# ============================================================

order_fields:
- order_id
- buyer_id
- listing_id
- seller_id
- purchase_context
- nation_context
- final_price
- fee_breakdown
- tax_breakdown
- access_granted_state
- refund_state
- recorded_at


# ============================================================
# 2. LIBRARY FIELDS
# ============================================================

library_fields:
- library_entry_id
- buyer_id
- product_id
- license_type
- access_mode
- access_state
- activation_record
- expiration_rule
- reuse_supported
- revocation_supported


# ============================================================
# 3. FINAL RULE
# ============================================================

Orders record payment.
Library records access.
These must remain distinct.
