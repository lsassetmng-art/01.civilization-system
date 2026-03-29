# ============================================================
# MULTI TENANT BUILDING INTERACTION MODEL
# ============================================================

status: canonical
layer: model
scope: civilization-map-ui
component: multi-tenant-building-interaction

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines interaction behavior
for buildings containing multiple tenants.


# ============================================================
# 2. CORE ROUTE
# ============================================================

canonical_route:
- building_tap
- tenant_list_open
- tenant_select
- tenant_function_open


# ============================================================
# 3. BUILDING TYPES
# ============================================================

multi_tenant_building_types:
- commercial_building
- mixed_use_building
- station_building
- financial_building
- office_building
- mall
- service_complex


# ============================================================
# 4. RULES
# ============================================================

rules:
- multi-tenant building tap must not directly guess one tenant unless configured as single dominant tenant mode
- tenant list must appear before tenant-specific service
- building management must remain separate from tenant use
- tenant status must be visible before selection


# ============================================================
# 5. FINAL RULE
# ============================================================

Buildings are containers.
Tenants are the actual service endpoints.
