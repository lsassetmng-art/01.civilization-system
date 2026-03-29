# ============================================================
# FACILITY TYPE TO SERVICE FAMILY MODEL
# ============================================================

status: canonical
layer: model
scope: facility-type-master
component: facility-type-to-service-family

owner: Boss
prepared_by: Zero


# ============================================================
# 1. DIRECT SERVICE TYPES
# ============================================================

direct_service_bindings:
- marketplace_facility -> marketplace_service
- user_company_direct_store -> company_direct_store_service
- bank_facility -> bank_service
- securities_company_facility -> securities_service
- insurance_facility -> insurance_service
- real_estate_finance_facility -> real_estate_service
- recruitment_information_center -> recruitment_service
- recruitment_company_facility -> recruitment_service
- company_recruitment_counter -> recruitment_service
- government_service_facility -> government_service
- public_employment_counter -> recruitment_service
- education_service_facility -> education_service
- education_career_guidance_facility -> recruitment_service
- medical_service_facility -> medical_service
- religion_service_facility -> religion_service
- station_service_facility -> station_service
- port_service_facility -> transport_service


# ============================================================
# 2. VIEW-ONLY SERVICE TYPES
# ============================================================

view_only_bindings:
- nation_market_information_board -> nation_market_board_service
- national_securities_market_facility -> national_market_board_service
- banking_rate_board_facility -> bank_rate_board_service
- real_estate_market_board_facility -> real_estate_market_board_service
- recruitment_information_board -> recruitment_board_service
- transport_information_center -> transport_board_service
- civic_notice_board -> civic_notice_service


# ============================================================
# 3. OVERVIEW OR CONTAINER TYPES
# ============================================================

overview_or_container_bindings:
- user_company_showroom -> company_overview_service
- user_company_branch_store -> company_overview_service
- system_marketplace_operator_facility -> marketplace_service
- major_medical_complex -> overview_service
- large_school_complex -> overview_service
- shrine_or_small_temple_service -> religion_service
- major_temple_or_cathedral_complex -> overview_service
- memorial_support_facility -> memorial_service
- railway_service_branch -> transport_service
- infrastructure_control_facility -> overview_service
- creator_owned_company_facility -> company_overview_service
- creator_owned_housing_facility -> housing_overview_service
- user_company_headquarters -> company_overview_service
- mixed_service_building -> tenant_container_service
- commercial_building -> tenant_container_service
- financial_building -> tenant_container_service
- mall -> tenant_container_service
- office_building -> tenant_container_service
- service_complex -> tenant_container_service


# ============================================================
# 4. FINAL RULE
# ============================================================

Every canonical facility type
must bind to one primary service family
before routing or placement logic is evaluated.
