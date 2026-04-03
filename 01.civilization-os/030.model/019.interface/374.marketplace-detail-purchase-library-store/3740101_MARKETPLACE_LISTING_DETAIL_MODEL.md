# ============================================================
# MARKETPLACE LISTING DETAIL MODEL
# ============================================================

status: canonical
layer: model
scope: marketplace-detail-purchase-library-store
component: marketplace-listing-detail

owner: Boss
prepared_by: Zero


# ============================================================
# 1. REQUIRED DETAIL BLOCKS
# ============================================================

required_detail_blocks:
- listing_header
- preview_block
- product_summary
- category_and_tags
- license_and_access_block
- nation_and_restriction_block
- seller_block
- trust_and_review_block
- price_and_fee_block
- purchase_action_block
- related_items_block


# ============================================================
# 2. REQUIRED FIELDS
# ============================================================

listing_detail_fields:
- listing_id
- listing_title
- listing_subtitle
- category_id
- preview_assets
- product_summary_text
- seller_id
- seller_name
- badges
- base_price
- fee_summary
- tax_summary
- final_price_preview
- license_type
- access_mode
- nation_availability_profile
- restriction_profile
- owned_state
- refund_profile
- review_summary


# ============================================================
# 3. ACTIONS
# ============================================================

listing_detail_actions:
- buy_now
- add_to_favorites
- open_seller_store
- open_reviews
- report_listing
- preview_asset
- compare_with_related
- open_nation_market_context
- open_global_market_context


# ============================================================
# 4. FINAL RULE
# ============================================================

Listing detail must explain
what the item does,
what the buyer gets,
and what may block or limit access.
