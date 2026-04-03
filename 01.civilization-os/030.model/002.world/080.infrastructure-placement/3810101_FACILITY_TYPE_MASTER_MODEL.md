# ============================================================
# FACILITY TYPE MASTER MODEL
# ============================================================

status: canonical
layer: model
scope: facility-type-master
component: facility-type-master

owner: Boss
prepared_by: Zero


# ============================================================
# 1. MARKETPLACE AND COMMERCE
# ============================================================

facility_types_marketplace_and_commerce:
- marketplace_facility
- nation_market_information_board
- user_company_direct_store
- user_company_showroom
- user_company_branch_store
- system_marketplace_operator_facility


# ============================================================
# 2. FINANCE AND MARKET
# ============================================================

facility_types_finance_and_market:
- bank_facility
- securities_company_facility
- national_securities_market_facility
- insurance_facility
- real_estate_finance_facility
- banking_rate_board_facility
- real_estate_market_board_facility


# ============================================================
# 3. PUBLIC AND CIVIC
# ============================================================

facility_types_public_and_civic:
- government_service_facility
- public_employment_counter
- civic_notice_board
- recruitment_information_center
- recruitment_information_board


# ============================================================
# 4. EDUCATION AND MEDICAL
# ============================================================

facility_types_education_and_medical:
- education_service_facility
- education_career_guidance_facility
- medical_service_facility
- major_medical_complex
- large_school_complex


# ============================================================
# 5. RELIGION AND MEMORIAL
# ============================================================

facility_types_religion_and_memorial:
- religion_service_facility
- shrine_or_small_temple_service
- major_temple_or_cathedral_complex
- memorial_support_facility


# ============================================================
# 6. TRANSPORT AND INFRASTRUCTURE
# ============================================================

facility_types_transport_and_infrastructure:
- station_service_facility
- transport_information_center
- railway_service_branch
- port_service_facility
- infrastructure_control_facility


# ============================================================
# 7. COMPANY AND HOUSING
# ============================================================

facility_types_company_and_housing:
- creator_owned_company_facility
- creator_owned_housing_facility
- user_company_headquarters
- company_recruitment_counter
- recruitment_company_facility


# ============================================================
# 8. MIXED USE AND TENANT
# ============================================================

facility_types_mixed_use_and_tenant:
- mixed_service_building
- commercial_building
- financial_building
- mall
- office_building
- service_complex


# ============================================================
# 9. FINAL RULE
# ============================================================

These facility types are canonical
and must be reused as shared identifiers
across all field-map related systems.
