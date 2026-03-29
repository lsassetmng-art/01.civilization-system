# ============================================================
# FIELD FACILITY SERVICE CATALOG MODEL
# ============================================================

status: canonical
layer: model
scope: field-facility-service-catalog
component: field-facility-service-catalog

owner: Boss
prepared_by: Zero


# ============================================================
# 1. REQUIRED FIELDS
# ============================================================

catalog_fields:
- facility_catalog_id
- facility_type
- operator_class
- service_family
- entry_class
- view_only_flag
- direct_use_supported
- overview_first_supported
- tenant_container_supported
- builder_entry_supported
- management_supported
- canonical_ui_target
- overview_ui_target
- restriction_target
- inactive_target


# ============================================================
# 2. OPERATOR CLASSES
# ============================================================

operator_classes:
- user_company
- system_company
- public_body
- nation_body
- city_body
- mixed_operator
- none_view_only


# ============================================================
# 3. ENTRY CLASSES
# ============================================================

entry_classes:
- direct_entry
- overview_first_entry
- tenant_container_entry
- owned_overview_entry
- view_only_entry


# ============================================================
# 4. FINAL RULE
# ============================================================

Every facility must be describable
through one catalog row
before it appears on the field map.
