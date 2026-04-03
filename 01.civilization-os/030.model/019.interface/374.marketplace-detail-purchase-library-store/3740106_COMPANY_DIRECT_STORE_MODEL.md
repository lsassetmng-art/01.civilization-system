# ============================================================
# COMPANY DIRECT STORE MODEL
# ============================================================

status: canonical
layer: model
scope: marketplace-detail-purchase-library-store
component: company-direct-store

owner: Boss
prepared_by: Zero


# ============================================================
# 1. REQUIRED STORE BLOCKS
# ============================================================

required_store_blocks:
- store_header
- brand_identity_block
- featured_goods_block
- category_navigation_block
- bundle_block
- review_summary_block
- official_badge_block
- seller_policy_block
- campaign_block
- related_company_links


# ============================================================
# 2. REQUIRED FIELDS
# ============================================================

company_store_fields:
- seller_id
- store_name
- store_subtitle
- brand_theme
- seller_badges
- store_category_set
- featured_listing_ids
- bundle_ids
- campaign_ids
- review_summary
- refund_profile
- nation_availability_summary
- direct_store_only_items_supported


# ============================================================
# 3. STORE ACTIONS
# ============================================================

store_actions:
- browse_category
- open_featured_listing
- open_bundle
- open_reviews
- follow_store
- favorite_store
- report_store_issue


# ============================================================
# 4. FINAL RULE
# ============================================================

Company direct store must feel
brand-specific and seller-specific
while remaining inside
the canonical marketplace structure.
