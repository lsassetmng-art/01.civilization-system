# ============================================================
# FACILITY SERVICE TYPE MODEL
# ============================================================

status: canonical
layer: model
scope: field-service-routing
component: facility-service-type

owner: Boss
prepared_by: Zero


# ============================================================
# 1. FACILITY TYPES
# ============================================================

facility_types:
- marketplace_facility
- bank_facility
- securities_facility
- direct_store_facility
- government_service_facility
- station_service_facility
- medical_service_facility
- education_service_facility
- religion_service_facility
- mixed_service_building
- overview_first_complex
- creator_owned_company_facility
- creator_owned_housing_facility


# ============================================================
# 2. SERVICE TYPES
# ============================================================

service_types:
- marketplace_service
- bank_service
- securities_service
- company_direct_store_service
- government_service
- station_service
- medical_service
- education_service
- religion_service
- overview_service
- tenant_container_service
- housing_overview_service
- company_overview_service


# ============================================================
# 3. FINAL RULE
# ============================================================

Facility type determines
the candidate service family,
but entry context determines
whether the user sees
direct use, overview, tenant list,
or restriction.
