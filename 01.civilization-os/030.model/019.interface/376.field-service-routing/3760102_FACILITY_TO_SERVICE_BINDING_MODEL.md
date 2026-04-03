# ============================================================
# FACILITY TO SERVICE BINDING MODEL
# ============================================================

status: canonical
layer: model
scope: field-service-routing
component: facility-to-service-binding

owner: Boss
prepared_by: Zero


# ============================================================
# 1. REQUIRED FIELDS
# ============================================================

binding_fields:
- facility_type
- default_service_type
- entry_class
- overview_supported
- tenant_list_supported
- management_supported
- canonical_ui_target
- restriction_target
- inactive_target


# ============================================================
# 2. ENTRY CLASSES
# ============================================================

entry_classes:
- direct_entry
- overview_first_entry
- tenant_container_entry
- owned_overview_entry
- restriction_only_entry


# ============================================================
# 3. EXAMPLE BINDINGS
# ============================================================

example_bindings:
- marketplace_facility -> marketplace_service -> direct_entry
- bank_facility -> bank_service -> direct_entry
- securities_facility -> securities_service -> direct_entry
- direct_store_facility -> company_direct_store_service -> direct_entry
- mixed_service_building -> tenant_container_service -> tenant_container_entry
- overview_first_complex -> overview_service -> overview_first_entry
- creator_owned_company_facility -> company_overview_service -> owned_overview_entry


# ============================================================
# 4. FINAL RULE
# ============================================================

A field facility must resolve
through one stable binding rule
before any UI opens.
