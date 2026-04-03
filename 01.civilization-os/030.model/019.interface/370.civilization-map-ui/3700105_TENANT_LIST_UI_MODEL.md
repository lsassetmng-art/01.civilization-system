# ============================================================
# TENANT LIST UI MODEL
# ============================================================

status: canonical
layer: model
scope: civilization-map-ui
component: tenant-list-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. REQUIRED FIELDS
# ============================================================

tenant_list_fields:
- tenant_id
- tenant_name
- tenant_type
- floor_or_zone
- operating_state
- icon
- primary_function
- operator_name
- trust_or_badge_state
- crowd_or_load_indicator


# ============================================================
# 2. TENANT TYPES
# ============================================================

tenant_types:
- marketplace_tenant
- bank_tenant
- securities_tenant
- direct_store_tenant
- service_counter_tenant
- restaurant_tenant
- education_tenant
- medical_tenant
- religion_tenant
- entertainment_tenant


# ============================================================
# 3. OPTIONAL FEATURES
# ============================================================

optional_features:
- category_filter
- floor_filter
- popularity_sort
- review_preview
- official_badge_highlight
- campaign_badge


# ============================================================
# 4. FINAL RULE
# ============================================================

Tenant list UI must allow
fast understanding of
what each tenant does
before entry.
