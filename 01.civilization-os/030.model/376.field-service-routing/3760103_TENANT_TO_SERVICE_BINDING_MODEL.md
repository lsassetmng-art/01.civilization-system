# ============================================================
# TENANT TO SERVICE BINDING MODEL
# ============================================================

status: canonical
layer: model
scope: field-service-routing
component: tenant-to-service-binding

owner: Boss
prepared_by: Zero


# ============================================================
# 1. REQUIRED FIELDS
# ============================================================

binding_fields:
- tenant_type
- resolved_service_type
- canonical_ui_target
- context_banner_supported
- building_backlink_supported
- inactive_tenant_target
- restricted_tenant_target


# ============================================================
# 2. TENANT TYPES
# ============================================================

tenant_types:
- marketplace_tenant
- bank_tenant
- securities_tenant
- direct_store_tenant
- medical_tenant
- education_tenant
- religion_tenant
- service_counter_tenant
- entertainment_tenant


# ============================================================
# 3. PARITY RULE
# ============================================================

parity_rule:
- tenant-selected service must use
  the same canonical service UI
  as an equivalent single-function facility


# ============================================================
# 4. FINAL RULE
# ============================================================

Tenant binding changes entry context,
not service truth.
