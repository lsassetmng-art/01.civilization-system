# ============================================================
# USER COMPANY SERVICE FACILITY MODEL
# ============================================================

status: canonical
layer: model
scope: field-facility-service-catalog
component: user-company-service-facility

owner: Boss
prepared_by: Zero


# ============================================================
# 1. USER COMPANY FACILITY TYPES
# ============================================================

user_company_facility_types:
- user_company_direct_store
- user_company_showroom
- user_company_headquarters
- user_company_branch_store
- user_company_bank_branch
- user_company_securities_branch
- user_company_insurance_counter
- user_company_real_estate_counter
- user_company_travel_counter
- user_company_recruitment_counter
- user_company_education_facility
- user_company_medical_facility
- user_company_religious_facility
- user_company_media_facility
- user_company_entertainment_facility


# ============================================================
# 2. DEFAULT ROUTING STYLE
# ============================================================

default_routing_style:
- direct_store and branch counters prefer direct_entry
- headquarters prefers overview_first_entry
- mixed commercial user facilities may prefer tenant_container_entry
- creator-owned company facilities may expose management_supported=true


# ============================================================
# 3. FINAL RULE
# ============================================================

User company facilities must support
normal user use flow
and explicit owner management flow
without mixing them.
