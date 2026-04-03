# ============================================================
# FACILITY TYPE OPERATOR COMPATIBILITY MODEL
# ============================================================

status: canonical
layer: model
scope: facility-type-master
component: facility-type-operator-compatibility

owner: Boss
prepared_by: Zero


# ============================================================
# 1. OPERATOR COMPATIBILITY
# ============================================================

operator_compatibility:
- marketplace_facility -> mixed_allowed
- nation_market_information_board -> nation_body
- user_company_direct_store -> user_company
- user_company_showroom -> user_company
- user_company_branch_store -> user_company
- system_marketplace_operator_facility -> system_company_only

- bank_facility -> mixed_allowed
- securities_company_facility -> mixed_allowed
- national_securities_market_facility -> nation_body
- insurance_facility -> mixed_allowed
- real_estate_finance_facility -> mixed_allowed
- banking_rate_board_facility -> nation_body
- real_estate_market_board_facility -> nation_body_or_city_body

- government_service_facility -> public_only
- public_employment_counter -> public_only
- civic_notice_board -> public_only
- recruitment_information_center -> mixed_allowed
- recruitment_information_board -> public_only_or_mixed_allowed

- education_service_facility -> mixed_allowed
- education_career_guidance_facility -> education_institution_or_public
- medical_service_facility -> mixed_allowed
- major_medical_complex -> mixed_allowed
- large_school_complex -> mixed_allowed

- religion_service_facility -> mixed_allowed
- shrine_or_small_temple_service -> mixed_allowed
- major_temple_or_cathedral_complex -> mixed_allowed
- memorial_support_facility -> public_or_religion

- station_service_facility -> public_or_system_company
- transport_information_center -> public_or_system_company
- railway_service_branch -> system_company_or_public
- port_service_facility -> public_or_system_company
- infrastructure_control_facility -> public_only

- creator_owned_company_facility -> user_company
- creator_owned_housing_facility -> mixed_allowed
- user_company_headquarters -> user_company
- company_recruitment_counter -> user_company
- recruitment_company_facility -> mixed_allowed

- mixed_service_building -> mixed_allowed
- commercial_building -> mixed_allowed
- financial_building -> mixed_allowed
- mall -> mixed_allowed
- office_building -> mixed_allowed
- service_complex -> mixed_allowed


# ============================================================
# 2. FINAL RULE
# ============================================================

Facility type defines
which operator classes are valid
before placement or service activation.
