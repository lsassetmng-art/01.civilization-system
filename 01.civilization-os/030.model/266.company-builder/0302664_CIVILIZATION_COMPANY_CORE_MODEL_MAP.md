# ============================================================
# CIVILIZATION COMPANY CORE MODEL MAP
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the minimum model map for company core,
site, occupancy, opening, and system-company mediation
inside CivilizationOS.


# ============================================================
# 1. COMPANY CORE MODELS
# ============================================================

## COMPANY_CORE
core_fields:
- company_core_id
- company_type_code
- legal_category
- nation_code
- company_status
- founding_date
- publication_status
- activation_status
- created_at
- updated_at

## COMPANY_BRAND_PROFILE
core_fields:
- company_brand_profile_id
- company_core_id
- company_name
- short_name
- icon_ref
- brand_image_ref
- company_summary
- profile_status
- created_at
- updated_at


# ============================================================
# 2. COMPANY SITE MODELS
# ============================================================

## COMPANY_SITE
core_fields:
- company_site_id
- company_core_id
- site_type
- nation_code
- region_ref
- district_ref
- property_object_ref
- tenant_unit_ref
- occupancy_mode
- site_status
- created_at
- updated_at

site_type examples:
- headquarters
- branch
- retail_store
- office
- studio
- school_site
- temple_site
- gallery_site
- workshop
- service_site

occupancy_mode examples:
- owned
- leased
- tenant
- shared_space
- allocated_use

## COMPANY_SITE_USE_PROFILE
core_fields:
- company_site_use_profile_id
- company_site_id
- use_type
- storefront_enabled
- operating_status
- open_to_public
- created_at
- updated_at

use_type examples:
- office_use
- retail_use
- studio_use
- education_use
- ritual_use
- exhibition_use
- warehouse_use
- service_use


# ============================================================
# 3. TENANT / OCCUPANCY MODELS
# ============================================================

## TENANT_OCCUPANCY_RECORD
core_fields:
- tenant_occupancy_record_id
- company_core_id
- company_site_id
- property_object_ref
- tenant_unit_ref
- occupancy_basis_type
- occupancy_status
- effective_from
- effective_to
- created_at
- updated_at

occupancy_basis_type examples:
- tenant_lease
- room_allocation
- mall_unit_occupancy
- office_unit_occupancy

## COMPANY_SITE_COMPATIBILITY_RULE
core_fields:
- company_site_compatibility_rule_id
- company_type_code
- site_type
- allowed_zone_type
- rule_status
- created_at
- updated_at


# ============================================================
# 4. OPENING / ZONE / NOTIFICATION MODELS
# ============================================================

## NATION_STORE_ZONE
core_fields:
- nation_store_zone_id
- nation_code
- zone_type
- region_ref
- district_ref
- zone_status
- created_at
- updated_at

zone_type examples:
- commercial_zone
- education_zone
- arts_zone
- religious_zone
- office_zone
- mixed_use_zone

## STORE_OPENING_RECORD
core_fields:
- store_opening_record_id
- company_core_id
- company_site_id
- nation_store_zone_ref
- store_type
- opening_status
- opened_at
- closed_at
- created_at
- updated_at

store_type examples:
- retail_store
- education_site
- gallery_site
- temple_site
- office_opening
- service_point

opening_status examples:
- preparing
- opened
- suspended
- closed
- moved

## NATION_STORE_NOTIFICATION_RECORD
core_fields:
- nation_store_notification_record_id
- nation_code
- store_opening_ref
- notification_type
- notification_status
- notified_at
- created_at
- updated_at

notification_type examples:
- opening_created
- opening_moved
- opening_closed
- opening_type_changed


# ============================================================
# 5. SYSTEM REAL ESTATE MEDIATION MODELS
# ============================================================

## SYSTEM_RE_PROPERTY_TRANSACTION_RECORD
core_fields:
- system_re_property_transaction_record_id
- system_real_estate_company_ref
- transaction_type
- from_party_ref
- to_party_ref
- property_object_ref
- tenant_unit_ref
- transaction_status
- created_at
- updated_at

transaction_type examples:
- purchase
- lease
- resale
- tenant_lease
- reassignment

## SYSTEM_RE_LISTING_RECORD
core_fields:
- system_re_listing_record_id
- system_real_estate_company_ref
- listing_type
- property_object_ref
- tenant_unit_ref
- listing_status
- created_at
- updated_at

listing_type examples:
- property_sale
- property_lease
- tenant_unit_lease
- resale_listing


# ============================================================
# 6. SYSTEM COMPANY ADMIN MODELS
# ============================================================

## SYSTEM_COMPANY_ADMIN_SURFACE_PROFILE
core_fields:
- system_company_admin_surface_profile_id
- system_company_ref
- admin_surface_type
- surface_status
- created_at
- updated_at

admin_surface_type examples:
- property_mediation_surface
- tenant_management_surface
- opening_notification_surface
- upload_review_surface
- marketplace_moderation_surface
- official_scout_surface


# ============================================================
# 7. FINAL MODEL MAP RULE
# ============================================================

This model map is the minimum support set
for company core, site, opening, and system-company mediation
inside CivilizationOS.

Core summary:

- company core is explicit
- company site is explicit
- tenant occupancy is explicit
- opening is explicit
- nation notification is explicit
- system real-estate mediation is explicit
- system company admin surfaces are explicit
