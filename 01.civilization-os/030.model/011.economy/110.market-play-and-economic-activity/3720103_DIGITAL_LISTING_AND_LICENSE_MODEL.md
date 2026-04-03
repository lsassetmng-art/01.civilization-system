# ============================================================
# DIGITAL LISTING AND LICENSE MODEL
# ============================================================

status: canonical
layer: model
scope: digital-marketplace
component: digital-listing-and-license

owner: Boss
prepared_by: Zero


# ============================================================
# 1. LISTING FIELDS
# ============================================================

listing_fields:
- listing_id
- product_id
- seller_id
- listing_title
- listing_description
- preview_assets
- category_id
- price_mode
- access_mode
- listing_state
- nation_availability_profile
- restriction_profile
- moderation_state


# ============================================================
# 2. LICENSE TYPES
# ============================================================

license_types:
- personal_use_license
- account_bound_access
- ceremony_use_license
- institution_use_license
- limited_event_use_license
- renewable_access_license
- permanent_access_license
- revocable_access_license


# ============================================================
# 3. ACCESS MODES
# ============================================================

access_modes:
- direct_unlock
- account_library_unlock
- one_time_use_unlock
- reusable_template_unlock
- subscription_bound_access
- event_bound_access


# ============================================================
# 4. FINAL RULE
# ============================================================

Every listing must define
what is sold,
how access is granted,
and how that access survives over time.
