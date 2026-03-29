# ============================================================
# MARKETPLACE ENTRY POINT MODEL
# ============================================================

status: canonical
layer: model
scope: marketplace-navigation-and-entry-ui
component: marketplace-entry-point

owner: Boss
prepared_by: Zero


# ============================================================
# 1. ENTRY POINT TYPES
# ============================================================

entry_point_types:
- civilization_global_menu_entry
- nation_market_facility_entry
- nation_facility_list_market_entry
- company_facility_entry
- company_list_entry
- tenant_market_entry
- listing_link_entry
- search_entry
- notification_entry


# ============================================================
# 2. ENTRY POINT FIELDS
# ============================================================

entry_point_fields:
- entry_point_id
- entry_point_type
- source_surface
- source_object_id
- context_scope
- default_filters
- default_sort
- context_banner_supported
- seller_context_supported
- nation_context_supported


# ============================================================
# 3. CONTEXT SCOPES
# ============================================================

context_scopes:
- civilization_global
- nation_scoped
- seller_scoped
- tenant_scoped
- listing_scoped
- search_scoped


# ============================================================
# 4. FINAL RULE
# ============================================================

Every marketplace entry point
must declare what scope it locks
before any list is shown.
