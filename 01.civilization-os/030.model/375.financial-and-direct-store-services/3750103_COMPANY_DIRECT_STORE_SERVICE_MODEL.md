# ============================================================
# COMPANY DIRECT STORE SERVICE MODEL
# ============================================================

status: canonical
layer: model
scope: financial-and-direct-store-services
component: company-direct-store-service

owner: Boss
prepared_by: Zero


# ============================================================
# 1. REQUIRED SURFACES
# ============================================================

required_surfaces:
- store_home
- featured_goods
- category_list
- listing_detail
- purchase_confirmation
- review_surface
- seller_notice_surface


# ============================================================
# 2. REQUIRED FIELDS
# ============================================================

direct_store_fields:
- seller_id
- store_id
- brand_theme
- store_badges
- featured_listing_ids
- bundle_ids
- campaign_ids
- restriction_notice_profile
- nation_context
- facility_or_tenant_context_banner


# ============================================================
# 3. ACTIONS
# ============================================================

direct_store_actions:
- browse_featured_goods
- browse_categories
- open_listing_detail
- open_reviews
- follow_store
- open_campaign
- report_store_issue


# ============================================================
# 4. FINAL RULE
# ============================================================

Direct store UI must preserve
canonical marketplace purchase truth
while emphasizing seller identity.
