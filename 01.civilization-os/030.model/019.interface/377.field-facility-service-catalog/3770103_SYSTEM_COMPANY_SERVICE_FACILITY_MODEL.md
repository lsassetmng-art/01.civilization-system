# ============================================================
# SYSTEM COMPANY SERVICE FACILITY MODEL
# ============================================================

status: canonical
layer: model
scope: field-facility-service-catalog
component: system-company-service-facility

owner: Boss
prepared_by: Zero


# ============================================================
# 1. SYSTEM COMPANY FACILITY TYPES
# ============================================================

system_company_facility_types:
- system_bank_branch
- system_securities_branch
- system_insurance_branch
- system_real_estate_branch
- system_marketplace_operator_facility
- system_logistics_branch
- system_railway_service_branch
- system_power_or_telecom_branch
- system_education_operator_facility
- system_medical_operator_facility
- system_media_operator_facility
- system_entertainment_facility
- system_recruitment_center


# ============================================================
# 2. DEFAULT ROUTING STYLE
# ============================================================

default_routing_style:
- system service counters prefer direct_entry
- larger system hubs may prefer overview_first_entry
- system-operated mixed buildings may use tenant_container_entry
- ordinary users do not receive builder_entry_supported for system facilities


# ============================================================
# 3. FINAL RULE
# ============================================================

System company facilities must provide
stable baseline services
even when user-created ecosystems are sparse.
