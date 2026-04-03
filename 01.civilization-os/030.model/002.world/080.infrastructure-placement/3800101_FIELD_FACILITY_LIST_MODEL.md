# ============================================================
# FIELD FACILITY LIST MODEL
# ============================================================

status: canonical
layer: model
scope: field-map-facility-dictionary-and-placement
component: field-facility-list

owner: Boss
prepared_by: Zero


# ============================================================
# 1. FACILITY LIST GROUPS
# ============================================================

facility_list_groups:
- marketplace_and_commerce
- finance_and_market
- public_and_civic
- education_and_medical
- religion_and_memorial
- transport_and_infrastructure
- company_and_housing
- mixed_use_and_tenant
- information_and_board


# ============================================================
# 2. MARKETPLACE AND COMMERCE
# ============================================================

marketplace_and_commerce:
- marketplace_facility
- nation_market_information_board
- user_company_direct_store
- user_company_showroom
- user_company_branch_store
- system_marketplace_operator_facility


# ============================================================
# 3. FINANCE AND MARKET
# ============================================================

finance_and_market:
- bank_facility
- securities_company_facility
- national_securities_market_facility
- insurance_facility
- real_estate_finance_facility
- banking_rate_board_facility
- real_estate_market_board_facility


# ============================================================
# 4. PUBLIC AND CIVIC
# ============================================================

public_and_civic:
- government_service_facility
- public_employment_counter
- civic_notice_board
- recruitment_information_center
- recruitment_information_board


# ============================================================
# 5. EDUCATION AND MEDICAL
# ============================================================

education_and_medical:
- education_service_facility
- education_career_guidance_facility
- medical_service_facility
- major_medical_complex
- large_school_complex


# ============================================================
# 6. RELIGION AND MEMORIAL
# ============================================================

religion_and_memorial:
- religion_service_facility
- shrine_or_small_temple_service
- major_temple_or_cathedral_complex
- memorial_support_facility


# ============================================================
# 7. TRANSPORT AND INFRASTRUCTURE
# ============================================================

transport_and_infrastructure:
- station_service_facility
- transport_information_center
- railway_service_branch
- port_service_facility
- infrastructure_control_facility


# ============================================================
# 8. COMPANY AND HOUSING
# ============================================================

company_and_housing:
- creator_owned_company_facility
- creator_owned_housing_facility
- user_company_headquarters
- company_recruitment_counter
- recruitment_company_facility


# ============================================================
# 9. MIXED USE AND TENANT
# ============================================================

mixed_use_and_tenant:
- mixed_service_building
- commercial_building
- financial_building
- mall
- office_building
- service_complex


# ============================================================
# 10. INFORMATION AND BOARD
# ============================================================

information_and_board:
- national_securities_market_facility
- banking_rate_board_facility
- real_estate_market_board_facility
- recruitment_information_board
- nation_market_information_board
- transport_information_center
- civic_notice_board


# ============================================================
# 11. FINAL RULE
# ============================================================

Field facility list exists
to enumerate every placeable
or visible facility family
before placement or routing.
