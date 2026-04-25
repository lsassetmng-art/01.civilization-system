# ============================================================
# CURRENCY AND STORE MODEL
# ============================================================

wallet_table_candidates:
- rpg_currency_wallet
- rpg_store_catalog
- rpg_purchase_order
- rpg_premium_entitlement

wallet_fields:
- wallet_id
- player_id
- soft_gold
- premium_gem
- paid_gem
- free_gem
- updated_at

purchase_fields:
- purchase_order_id
- player_id
- catalog_code
- billing_channel
- display_currency_code
- display_price_amount
- purchase_state
- purchased_at
- revoked_at
