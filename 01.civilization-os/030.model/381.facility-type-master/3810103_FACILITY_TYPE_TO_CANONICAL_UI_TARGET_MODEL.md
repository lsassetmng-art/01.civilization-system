# ============================================================
# FACILITY TYPE TO CANONICAL UI TARGET MODEL
# ============================================================

status: canonical
layer: model
scope: facility-type-master
component: facility-type-to-canonical-ui-target

owner: Boss
prepared_by: Zero


# ============================================================
# 1. UI TARGET BINDINGS
# ============================================================

ui_target_bindings:
- marketplace_facility -> marketplace_ui
- nation_market_information_board -> nation_market_board_ui
- user_company_direct_store -> company_direct_store_ui
- user_company_showroom -> company_overview_ui
- user_company_branch_store -> company_overview_ui
- system_marketplace_operator_facility -> marketplace_ui

- bank_facility -> bank_ui
- securities_company_facility -> securities_ui
- national_securities_market_facility -> national_market_board_ui
- insurance_facility -> insurance_ui
- real_estate_finance_facility -> real_estate_ui
- banking_rate_board_facility -> bank_rate_board_ui
- real_estate_market_board_facility -> real_estate_market_board_ui

- government_service_facility -> government_service_ui
- public_employment_counter -> recruitment_ui
- civic_notice_board -> civic_notice_ui
- recruitment_information_center -> recruitment_ui
- recruitment_information_board -> recruitment_board_ui

- education_service_facility -> education_ui
- education_career_guidance_facility -> recruitment_ui
- medical_service_facility -> medical_ui
- major_medical_complex -> facility_overview_ui
- large_school_complex -> facility_overview_ui

- religion_service_facility -> religion_ui
- shrine_or_small_temple_service -> religion_ui
- major_temple_or_cathedral_complex -> facility_overview_ui
- memorial_support_facility -> facility_overview_ui

- station_service_facility -> station_service_ui
- transport_information_center -> transport_board_ui
- railway_service_branch -> transport_ui
- port_service_facility -> transport_ui
- infrastructure_control_facility -> facility_overview_ui

- creator_owned_company_facility -> company_overview_ui
- creator_owned_housing_facility -> housing_overview_ui
- user_company_headquarters -> company_overview_ui
- company_recruitment_counter -> recruitment_ui
- recruitment_company_facility -> recruitment_ui

- mixed_service_building -> tenant_list_ui
- commercial_building -> tenant_list_ui
- financial_building -> tenant_list_ui
- mall -> tenant_list_ui
- office_building -> tenant_list_ui
- service_complex -> tenant_list_ui


# ============================================================
# 2. FINAL RULE
# ============================================================

Canonical UI target must remain stable
for the same facility type
across all entry routes.
