# ============================================================
# MARKETPLACE SELLER TYPE MODEL
# ============================================================

status: canonical
layer: model
scope: digital-marketplace
component: marketplace-seller-type

owner: Boss
prepared_by: Zero


# ============================================================
# 1. SELLER TYPES
# ============================================================

seller_types:
- individual_creator
- company_seller
- certified_company_seller
- religion_institution_seller
- education_institution_seller
- city_or_public_body_seller
- state_certified_seller
- marketplace_official_seller


# ============================================================
# 2. SELLER FIELDS
# ============================================================

seller_fields:
- seller_id
- seller_type
- seller_name
- permission_profile
- moderation_risk_profile
- trust_badge_profile
- store_page_supported
- analytics_supported
- direct_store_supported
- restricted_category_profile


# ============================================================
# 3. FINAL RULE
# ============================================================

Every seller must define
what they may sell,
how they are trusted,
and whether they support a direct store.
