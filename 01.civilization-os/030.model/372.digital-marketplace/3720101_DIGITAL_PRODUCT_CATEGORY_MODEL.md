# ============================================================
# DIGITAL PRODUCT CATEGORY MODEL
# ============================================================

status: canonical
layer: model
scope: digital-marketplace
component: digital-product-category

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PRODUCT CATEGORIES
# ============================================================

product_categories:
- ui_theme
- background_pack
- icon_pack
- life_event_decoration_pack
- invitation_template_pack
- memorial_template_pack
- ceremony_visual_pack
- ritual_visual_pack
- music_pack
- voice_pack
- text_template_pack
- story_pack
- nation_theme_pack
- city_theme_pack
- company_brand_pack
- digital_book
- digital_art
- education_material_pack
- business_template_pack
- service_access_right


# ============================================================
# 2. CATEGORY FIELDS
# ============================================================

category_fields:
- category_id
- category_name
- digital_only
- default_license_type
- review_required
- nation_restriction_supported
- religion_restriction_supported
- seller_type_restriction_supported
- ui_preview_supported
- bundle_supported


# ============================================================
# 3. FINAL RULE
# ============================================================

Every product category must define
what kind of digital access it grants
and what restriction systems may apply.
